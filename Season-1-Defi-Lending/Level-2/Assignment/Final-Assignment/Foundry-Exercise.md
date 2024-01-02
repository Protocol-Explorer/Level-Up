##  Foundry Exercise Level 2

OK. We're going to keep building on what we covered.
So at any given time, if you're confused what command to use and we haven't covered it here, go back to previous levels or check the relevant Cyfrin lecture.

## Install Openzeppelin locally
For this level you will need to use the ERC20 token contract.
You can use the [OpenZeppelin Contract Wizard](https://wizard.openzeppelin.com/) to deploy an ERC-20 real quick. Make sure you set the right settings when it comes to 'Ownable' 😉.

Another hint, your contracts will interact with eachother, make sure the relevant contract is `approved` to interact with the other contract.

If you run into issues, make sure to drop a message in the [TG Discussion group](https://t.me/+5mW5gsUKqxQ5ZGYx)!

Run the following command to install Openzeppelin
```bash
forge install OpenZeppelin/openzeppelin-contracts
```

Next command
```bash
forge remappings > remappings.txt
```
or remap manual in foundry.toml

```bash
remappings = ['']
```

## Deploying without `.env`
Passing private keys directly in the terminal from `anvil` is fine. **This is not done for your own wallet**. As you've seen in the Cyfrin course, we have to be careful with our keys and `.env` is fine for a development environment, but for production it's not ok.

Luckily Foundry came with an update and now we can encrypt our keys in Foundry!
Check this [video]('https://www.youtube.com/watch?v=VQe7cIpaE54') where Patrick explains how to use `cast`.


Below you will find a step-by-step approach on how to use `cast`.
Cast command to import your private-key (or create an account)
```bash
cast wallet import <ACCOUNT-NAME> --interactive
```
Example command
```bash
cast wallet import defaultKey --interactive
```
You will be prompted for your private keys and a password to secure your account.

**Before you pass them**, make sure no one is watching and it's also **not** recommended to this in the terminal of your code-editor, but your pc's terminal.

If you run the following command, you should see a list of all the accounts available.
```bash
cast wallet list
```
Now where are your private keys stored and are they safe?
Yes.
Run the following command to navigate to where the private keys are stored
```bash
cd .foundry/keystores
```
Run the following command to see what's stored in it.
```bash
cat <ACCOUNT-NAME>
```
Example
```bash
cat defaultKey
```
As you can see in the output of your terminal, your private key is encrypted. As mentioned in the video, it's encrypted using ERC-2335.

Make sure to remove any history from your terminal by running the following command and delete your terminal's history file.
```bash
history -c
```

## Deploy with a Script
At this stage it would be nice if you could run a script, so we keep our commands nice and easy. 

How to setup a script

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import {Script} from "forge-std/Script.sol";
import {EtherWallet} from "../src/EtherWallet.sol" ;


contract EtherWalletScript is Script {
    function run() external returns(EtherWallet) {
        //Before broadcast transaction
        //broadcast transaction
        vm.startBroadcast();
        EtherWallet etherWallet = new EtherWallet();
        vm.stopBroadcast();
        return etherWallet;
    }
}
```

Right now our EtherWallet does not take an argument. For the Lending contract at this level we will need to pass an argument.
Let's adjust the contract, specifically the constructor:
```solidity
  constructor(address _owner) {
        owner = payable(_owner);
    }
```

## Deploy with an Argument

The constructor of this level's contract takes an ERC20 address.
We need to pass it when we deploy.

Note that with forge create right now, you can not use the --account and --sender. 
So in order to deploy using 'just' the cli command, you would need to run the following command. 
Though it's not recommended with your own wallet, it's fine if you do it with let's an anvil account.
```bash
forge create EtherWallet --rpc-url http://127.0.0.1:8545 --constructor-args 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266 --interactive
```

This is how you pass an argument with a script. 
First adjust the script. Add a variable for the address (before the broadcast)

```solidity
address addi = 0x9e14247e1cB7b18fFB51abD50C99Ef7F57070548;
```
Next, pass it to the object that creates the smart contract
```solidity
EtherWallet etherWallet = new EtherWallet(addi);
```

run the following command
```bash
forge script script/<SCRIPTNAME> --rpc-url <RPCURL> --account <YOURACCOUNTNAME> --sender <ADDRESS-FOR-THE-ACCOUNT> --broadcast -vvvv
```

Here's an example of mine
```bash
forge script script/EtherWallet.s.sol --rpc-url https://sepolia-rpc.scroll.io --account testraza --sender 0x9e14247e1cB7b18fFB51abD50C99Ef7F57070548 --broadcast -vvvv
```

## Deploy with a Config File
Right now we're only passing 1 address at this stage. But in the future you might need to pass more than one argument. Not only that, addresses will differ depending on which chain you deploy or if you use anvil.

In the most simple case, you will test deploy on anvil and if everything looks OK you'd want to deploy to a live testnet.

We'll use a `Config.s.sol` file for that. 

If this seems daunting, go back to the Cyfrin Course [Foundry Fundamentals](https://updraft.cyfrin.io/courses/foundry).

Create a file `HelperConfig.s.sol`.

We're not going to bother with a custom type, using a struct just yet. 
Let's use a simplified config file to get used to using a HelperConfig

Here's how it looks
```solidity
//SPDX-License-Indentifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";

contract HelperConfig is Script {
   address public owner;

    constructor() {
        owner = getOwnerAddress();
    }

    function getOwnerAddress() public view returns (address) {
        if (block.chainid == 534351) { // Sepolia
            return 0x9e14247e1cB7b18fFB51abD50C99Ef7F57070548; // Sepolia owner address
        } else {
            // Default to Anvil owner address or add more conditions for different chains
            return 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266; // Replace with your Anvil owner address
        }
    }
}
```

The deploy script looks something like this

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import {Script} from "forge-std/Script.sol";
import {EtherWallet} from "../src/EtherWallet.sol" ;
import {HelperConfig} from "./HelperConfig.s.sol";

contract EtherWalletScript is Script {
    function run() external returns(EtherWallet) {
        //Before broadcast transaction
        HelperConfig helperConfig = new HelperConfig();
        address addi = helperConfig.getOwnerAddress();
        //broadcast transaction
        vm.startBroadcast();
        EtherWallet etherWallet = new EtherWallet(addi);
        vm.stopBroadcast();
        return etherWallet;
    }
}

```

## Verify with a constructor
Awesome, now to the final part. We've deployed our contract. Next we need to verify it. 
Remember our previous command for verifying was this.
```bash
forge verify-contract 0x0213098123 BasicLending \
  --verifier-url https://api-sepolia.scrollscan.com/api \
  --etherscan-api-key 31241234\

  ```

Now we need to provide a parameter for our constructor in our CLI. This is the command.
Here's an example of mine

```bash
forge verify-contract 0xA4F261071A9E753B185cef88d18B68957a567607 EtherWallet \
  --verifier-url https://api-sepolia.scrollscan.com/api \
  --etherscan-api-key KJDHLWAH7231094132 \
 --constructor-args $(cast abi-encode "constructor(address)" 0x9e14247e1cB7b18fFB51abD50C99Ef7F57070548)
  ```






Based on your provided structure, here's a similar guide for deploying and verifying the `TokenLending` contract using Foundry:

## Foundry Exercise for TokenLending Contract

We will build upon the concepts covered in previous lessons and Cyfrin lectures. This exercise focuses on deploying and verifying the `TokenLending` contract with Foundry.

## Install Openzeppelin locally
For this level you will need to use the ERC20 token contract.
You can use the [OpenZeppelin Contract Wizard](https://wizard.openzeppelin.com/) to deploy an ERC-20 real quick. Make sure you set the right settings when it comes to 'Ownable' 😉.

Another hint, your contracts will interact with eachother, make sure the relevant contract is `approved` to interact with the other contract.

If you run into issues, make sure to drop a message in the [TG Discussion group](https://t.me/+5mW5gsUKqxQ5ZGYx)!

To use the ERC20 token contract in the `TokenLending` contract, install Openzeppelin:

```bash
forge install OpenZeppelin/openzeppelin-contracts
```

Then, manage remappings:

```bash
forge remappings > remappings.txt
```
or manually in `foundry.toml`:

```bash
remappings = ['']
```

## Deploying without `.env`
For secure key management, Foundry allows encrypted key storage. Avoid using `.env` for production.

Learn about `cast` and key encryption:

```bash
cast wallet import <ACCOUNT-NAME> --interactive
```

For example:

```bash
cast wallet import defaultKey --interactive
```

After entering your private key and setting a password, check the accounts:

```bash
cast wallet list
```

Navigate to the keystores:

```bash
cd .foundry/keystores
```

Verify the encryption:

```bash
cat <ACCOUNT-NAME>
```

Example:

```bash
cat defaultKey
```

Clear terminal history:

```bash
history -c
```

## Deploy with a Script
Scripts simplify deployment. Modify the `EtherWalletScript` for the `TokenLending` contract:

### Adjust the Contract
Modify the constructor to accept an ERC20 address:

```solidity
constructor(address _erc20Token) {
    token = IERC20(_erc20Token);
}
```

### Deploy with an Argument
Pass the ERC20 address when deploying. Example command using CLI:

```bash
forge create TokenLending --rpc-url http://127.0.0.1:8545 --constructor-args <ERC20_ADDRESS> --interactive
```

Adjust the script to pass the address:

```solidity
address erc20Address = <ERC20_ADDRESS>;
TokenLending tokenLending = new TokenLending(erc20Address);
```

Run the deployment script:

```bash
forge script script/<SCRIPTNAME> --rpc-url <RPCURL> --account <YOURACCOUNTNAME> --sender <ADDRESS-FOR-THE-ACCOUNT> --broadcast -vvvv
```

Example:

```bash
forge script script/TokenLending.s.sol --rpc-url https://sepolia-rpc.scroll.io --account testAccount --sender <SENDER_ADDRESS> --broadcast -vvvv
```

## Deploy with a Config File
For dynamic address management, use a `HelperConfig` file:

### HelperConfig File
Create `HelperConfig.s.sol`:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";

contract HelperConfig is Script {
    function getErc20Address() public view returns (address) {
        if (block.chainid == <CHAIN_ID>) { // Chain specific
            return <ERC20_ADDRESS>; // Chain-specific ERC20 address
        } else {
            return <DEFAULT_ERC20_ADDRESS>; // Default ERC20 address
        }
    }
}
```

### Deploy Script
Modify the deploy script to use `HelperConfig`:

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import {Script} from "forge-std/Script.sol";
import {TokenLending} from "../src/TokenLending.sol";
import {HelperConfig} from "./HelperConfig.s.sol";

contract TokenLendingScript is Script {
    function run() external returns(TokenLending) {
        HelperConfig helperConfig = new HelperConfig();
        address erc20Address = helperConfig.getErc20Address();
        vm.startBroadcast();
        TokenLending tokenLending = new TokenLending(erc20Address);
        vm.stopBroadcast();
        return tokenLending;
    }
}
```

## Verify with a Constructor Argument
Finally, verify the deployed contract with its constructor argument:

```bash
forge verify-contract <CONTRACT_ADDRESS> TokenLending \
  --verifier-url <VERIFIER_URL> \
  --etherscan-api-key <ETHERSCAN_API_KEY> \
  --constructor-args $(cast abi-encode "constructor(address)" <ERC20_ADDRESS>)
```

Example:

```bash
forge verify-contract <CONTRACT_ADDRESS> TokenLending \
  --verifier-url https://api-sepolia.scrollscan.com/api \
  --etherscan-api-key <API_KEY> \
  --constructor-args $(cast abi-encode "constructor(address)" 0xERC20Address)
```

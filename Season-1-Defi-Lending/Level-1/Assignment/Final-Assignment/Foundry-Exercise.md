# level 1 - Foundry Exercise

We’re going to setup a foundry project, deploy the contract to Scroll Sepolia testnet and verify it.

At level 1 we’re not going to bother with scripts yet.

If you want to dive into tests, head over to the Foundry-Test folder.

## Commands
Here are the Foundry commands you will need:

Create a project

```bash
forge init
```

Compile the contract

```bash
forge build
```

Run a local blockchain

```bash
anvil
```

Deploy locally

```bash
forge create
```

Interact with the contract

```bash
cast
```

# Creating the project

Create a new folder and run `forge init`.
`forge init` is used to create a new Foundery project. 

Note when you run forge init, you might run into an issue. 


```bash
Error: 
The target directory is a part of or on its own an already initialized git repository,
and it requires clean working and staging areas, including no untracked files.

Check the current git repository's status with `git status`.
Then, you can track files with `git add ...` and then commit them with `git commit`,
ignore them in the `.gitignore` file, or run this command again with the `--no-commit` flag.

If none of the previous steps worked, please open an issue at:
https://github.com/foundry-rs/foundry/issues/new/choose
```

to solve this issue you need to run this command

```bash
forge init --no-commit
```

# Compiling the contract

The next command you need to run is forge build

this compiles the contract and creates the ABI

```bash
forge build
```

# Running a local blockchain

For level 1, we’re not going to deploy to a live blockchain network. Instead we’re running anvil, a devnet that runs on your local computer.

```bash
anvil
```

# Deploy your contract

To deploy your contract run. Make sure you’re in the right folder, else the command doesn’t work.

This is the command structure

```bash
forge create <CONTRACT NAME> --rpc-url <NETWORK> --interactive
```

This is an example of my command

```bash
forge create Counter --rpc-url http://127.0.0.1:8545 --interactive
```

You will be prompted in your terminal, to pass your private keys. Go to the terminal, where anvil is running. There will be private keys available to you there. Copy and paste it.

Note, when you paste your private key, you wont see it, but it is pasted.

After you’ve run the command, the terminal should output something like this

```bash
Deployer: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
Deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
Transaction hash: 0x4b1d82d3d33674496088b5e92e99494280ffcc1f27035269873a5ca04c432c93
```

<aside>
💡 MAKE SURE TO COPY PASTE THE CONTRACT ADDRESS, YOU NEED IT LATER

</aside>

You can find your contract address after `Deployed to`

# Interact with your contract

Cast is a powerful tool to interact with your contract. Lets see how to use it

This is the structure to call the value of a public variable

```bash
cast call <CONTRACTADDRESS> "VARIABLENAME()"
```

Here’s an example of my contract

```bash
cast call 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "number()"
```

We get an output in hex data and can convert it to a normal number output like this

```bash
cast to-base <DATA> decimal
```

Example of my command

```bash
cast to-base 0x0000000000000000000000000000000000000000000000000000000000000000 decimal
```

You will get an error when you run the following command

```bash
cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "setNumber(uint256)" 5
```

That is because you need the private keys of the owner of the contract to make state changes (ie change data ‘onchain)

Add the flag `--interactive` , here’s an example:

```bash
cast send 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512 "setNumber(uint256)" 5 --interactive
```

A new value should appear. 

Run the `cast call` again, to retrieve the new value of `number`. Use the up arrow in your terminal to find the previous command. Keep pressing up until you find it.

Run following command to increment the number using the `increment()` function.

## Deploying without `.env`
Passing private keys directly in the terminal from `anvil` is fine. **This is not done for your own wallet**. As you've seen in the Cyfrin course, we have to be careful with our keys and `.env` is fine for a development environment, but for production it's not ok.

Luckily Foundry came with an update and now we can encrypt our keys in Foundry!
Check this [video](https://www.youtube.com/watch?v=VQe7cIpaE54) where Patrick explains how to use `cast`.

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

The command you can run to deploy using `forge create` :
```bash
forge create <CONTRACTNAME> --rpc-url <NETWORK> --account <ACCOUNT-NAME>
```
You will be prompted to enter your password for your account.

Boom deployed.
Note your contract address, you will need it to verify in a bit.
Head over to [Scroll Scan](https://sepolia.scrollscan.dev/) and look up your contract to check out your deployment.

Make sure to remove any history from your terminal by running the following command and delete your terminal's history file.
```bash
history -c
```

## Setting up Scroll Sepolia
First let's add the Scroll network to your metamask.
Head over to [Chainlist](https://chainlist.org/?search=scroll&testnets=true) and add Scroll Sepolia testnet to your wallet.

Check out this quick video on how you can find Scroll Sepolia on chainlist.org
https://twitter.com/BuildWithScroll/status/1714789104129581454

Now that we've added the network to our MetaMask, [click here](https://bwarelabs.com/faucets/scroll-testnet) to get some testnet-eth or go to any of the following links and get some testnet-eth for Scroll-Sepolia:
https://bwarelabs.com/faucets/scroll-testnet
https://scroll.l2scan.co/faucet
https://www.covalenthq.com/faucet/
https://faucet.quicknode.com/scroll/sepolia

If you run into issues with testnet eth, go to our Telegram discussion group and tag @razacodes.

## Time to Deploy
Awesome, we have added the Scroll-Testnet and our account is funded. Let's use the cast method to add our MetaMask account to Foundry and deploy to a live testnet.

[Export your private keys](https://support.metamask.io/hc/en-us/articles/360015289632-How-to-export-an-account-s-private-key) from your MetaMask, you will need this later.

Run the following command, pick a name for your account. I'll call mine `testuser`.

```bash
cast wallet import testuser --interactive
```
Pass your private keys and choose a password.

Run the following command to check if your account has been added.
```bash
cast wallet list
```
Now let's deploy to Scroll-Sepolia. Here's the rpc url `https://sepolia-rpc.scroll.io/`
```bash
forge create BasicLending --rpc-url https://sepolia-rpc.scroll.io/ --account testuser --sender 0x023023423 --broadcast
```
If you want to see the traces, you can choose to add `-vvv`, add more 'v's as needed.

Enter your password and boom. Deployed.

**Note your Contract Address, you will need it in the next step**

### Verifying your contract

In order for us to interact with our contract through a UI like scrollscan, we need to verify it first.
2 ways to do that, manually or through Foundry.

You need API keys to do it via foundry. Fear not. It's free an easy to do.
Here are the steps to follow
1. Go to https://scrollscan.com/register and create an account
2. Grab the keys from your account

[Here's a quick video](https://youtu.be/ks9Cj-lP1Tw?t=360) if you want to follow the exact steps for Scroll Sepolia.

The steps are also listed out [here](https://razacodes.hashnode.dev/mastering-foundry-episode-1-getting-started-with-foundry#heading-8-verifying-the-contract).


Next we're going to run the following command

```bash
forge verify-contract <contract address> <contract name> \
  --verifier-url https://api-sepolia.scrollscan.com/api \
  --etherscan-api-key <your Scrollscan API key> \
  --constructor-args <your constructor arguments>
  ```
Let's break it down.

You need your contract address that you deployed and the contract name.
Leave the verifier URL, that is set correct

Next pass your API keys.
Now i know what we said. No more `.env`, but for your APIkeys we'll need them.
You can also pass it manually through the terminal.

We don't have a constructor so we can omit that part (for now, we'll need it in our later levels).

```bash
forge verify-contract 0x0213098123 BasicLending \
  --verifier-url https://api-sepolia.scrollscan.com/api \
  --etherscan-api-key 31241234\

  ```


  [<img alt="foundry exercise" width="250px" src="../../../images/finalAssignment.png" />](README.md)
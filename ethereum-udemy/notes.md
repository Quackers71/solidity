# Ethereum and Solidity: The Complete Developers Guide

## Section 1: What is Ethereum?

Dr Google'd https://github.com/ethereum/go-ethereum/issues/16600

Went to https://faucet.rinkeby.io/

Tweeted: https://twitter.com/QinYorkshire/status/1288811112461459457

Then copied embedded URL into the Rinkeby Authentication Faucet

Now have 21.75 Test Ethereum Tokens - https://rinkeby.etherscan.io/address/0xd93fc490f6f4ca9ce9f3d6f724dc0ef0dfdc2676

---

From the Transaction Properties 

- The v, r, & s are - Cryptographic pieces of data that can be used to generate the senders account address.  Generated from the sender's private key.

#### Basic Blockchains by Anders Brownworth taken from the course

- https://andersbrownworth.com/

- https://www.youtube.com/watch?v=_160oMzblY8

- https://andersbrownworth.com/blockchain/


14. Block Time

- https://etherscan.io/chart/blocktime


18. Notes on comments section from a User asking for more up to date solidity version code i.e. 
    With the recent release of solidity version 0.6.0, I think it would be great to see some updates, as it looks like a lot has changed since V0.4.17.

    Response from another User: 

    Given the above stated facts I've been frustrated with attempts to find good, reliable learning material on Ethereum/Solidity/Web3.js on the web (outside of official docs) and to be honest, this course is the most enjoyable and acceptable material I've come across so far. I agree with your point about wanting the lessons to provide more up-to-date code, and so I've decided to help make this a reality via a public GitHub repo I've created at:

    https://github.com/owanhunte/ethereum-solidity-course-updated-code

    Hopefully, this repo helps add additional value to current and future students enrolled in this course and allows you to always have access to code compatible with the latest released versions of Solidity, Web3.js, etc.


26. Gas & Transactions

- https://etherconverter.now.sh/

- https://docs.google.com/spreadsheets/d/1n6mRqkBz3iWcOlRem_mO09GtSKEKrAsfO7Frgx18pNU/edit#gid=0 # Updated Spreadsheet of Gas Costs -- EIP-150 Revision (1e18248 - 2017-04-12) 
  taken from https://www.reddit.com/r/ethereum/comments/6k2ibr/updated_spreadsheet_of_gas_costs_eip150_revision/

- https://www.reddit.com/r/ethereum/
  see also https://f2pool.io/mining/insights/eth/beginner-guide-eth-2-0/


27. Mnemonic Phrases (Seed Passphrase)

- https://iancoleman.io/bip39/

Put your Seed Passphrase into the BIP39 Mnemonic field and scroll down...


29. Don't Skip! Node JS Versioning

Some later lectures in this course will depend on an up-to-date version of Node JS.  Please take this opportunity to make sure you're running at least version 8.0.0 of Node JS.  You can check your current version by running the command node -v at your command line.

If you are running an older version, you can easily update it by grabbing an updater here: https://nodejs.org/en/download/


30. Contract Deployment

- Truffle - CLI for Contract Creation including Programatic Automated Testing and Deployment to the Network .i.e Rinkeby

- Custom Node Project - from Scratch as 1st assignment


31. Boilerplate Requirements

Rob@Q64-PC1 MINGW64 ~/Desktop/repos/solidity/ethereum-udemy/inbox (develop)
$ node -v
v12.16.2
Rob@Q64-PC1 MINGW64 ~/Desktop/repos/solidity/ethereum-udemy/inbox (develop)
$ npm init
This utility will walk you through creating a package.json file.
It only covers the most common items, and tries to guess sensible defaults.

See `npm help json` for definitive documentation on these fields
and exactly what they do.

Use `npm install <pkg>` afterwards to install a package and
save it as a dependency in the package.json file.

Press ^C at any time to quit.
package name: (inbox)
version: (1.0.0)
description:
entry point: (index.js)
test command:
git repository:
keywords:
author:
license: (ISC)
About to write to C:\Users\Rob\Desktop\repos\solidity\ethereum-udemy\inbox\package.json:

{
  "name": "inbox",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "ISC"
}


Is this OK? (yes)


33. Syntax Highlighters

Links to syntax highlighters are below.  Remember that syntax highlighting for Solidity code isn't strictly required, and we won't be writing a lot of Solidity inside our editor.  With that in mind, if you run into any installation issues I'd recommend continuing on rather than trying to troubleshoot it.

    Atom - https://atom.io/packages/language-ethereum
        Open the package installation manager in atom and search for 'language-ethereum'.  After installing the package, you might have to manually change the highlighter in the .sol file.  Look for the selector at the bottom right of your editor window.
    Sublime - https://packagecontrol.io/packages/Ethereum
    VSCode - https://github.com/juanfranblanco/vscode-solidity
    Webstorm - https://plugins.jetbrains.com/plugin/9475-intellij-solidity
    VIM - https://github.com/tomlion/vim-solidity


34. Solidity "AssertionError [ERR_ASSERTION]: Invalid callback specified" errors

Recently, Solidity released version 0.5.0 and introduced many breaking changes. At the moment this course only supports Solidity versions 0.4.25 and lower. We recommend sticking with the suggested versions used in the course to learn the fundamental concepts. After completion, upgrading to the latest dependency releases and refactoring would be a great continuing education exercise.

When running your test code you are probably getting or will probably get the following:

AssertionError [ERR_ASSERTION]: Invalid callback specified

If so, you should:

1. Uninstall solc:
npm uninstall solc


2. Reinstall one of two versions:

The version used in the course:

npm install --save solc@0.4.17

or

The newest version that will not break:

npm install --save solc@0.4.25

Remember to do this for each solc installation step in this course (There are likely three in total)


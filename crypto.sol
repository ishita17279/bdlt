// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    string public name = "CryptoCoin";
    string public symbol = "PVC";
    uint8 public decimals = 18;
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    constructor(uint256 _initialSupply) {
        totalSupply = _initialSupply;
        balanceOf[msg.sender] = _initialSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {

        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        return true;
    }
}


/*How to Perform in Practical
Step 1. Open Remix IDE

Step 2. Create File
SubscriptionService.sol

Step 3. Compile

Step 4. Deploy

Step 5. Test Functions
A — Check Token Values
Under deployed contract:
Click:
  name
  Output: CryptoCoin

  symbol
  Output: PVC

  totalSupply
  Output: 1000

B — Check Your Balance
Click:
  balanceOf
  It asks for address.
  Paste YOUR MetaMask address.

  Output: 1000

  Meaning: you own all 1000 PVC tokens.

C — Transfer Tokens
Create second account
Import another Ganache account into MetaMask.

Copy its address.
Use transfer()
  It asks:
  _to
  _value

  Enter:
  second account address
  token amount (example: 100)

  Click: transact

D — Verify Transfer
Use:
  balanceOf
  Paste first address.
  Output: 900

  Paste second address.
  Output: 100

Meaning transfer worked successfully.

What Your Practical Demonstrates?
  cryptocurrency creation
  token supply generation
  ownership allocation
  blockchain transaction execution
  token transfer between users
  decentralized balance storage

------------------------------------------------------------
THEORY

Study of Cryptocurrency Development
Aim: To study cryptocurrency development using blockchain technology.

Introduction:
Cryptocurrency is a digital currency secured using cryptography and blockchain technology. It enables secure peer-to-peer transactions without banks.
Bitcoin is the first cryptocurrency introduced in 2009.

Tools Used:
  Remix IDE
  Ganache
  MetaMask

Components of Cryptocurrency:
  1. Blockchain
  Stores transaction records securely.
  
  2. Cryptography
  Provides security using encryption.
  
  3. Smart Contracts
  Programs that run automatically on blockchain.
  Example: Ethereum
  
  4. Wallets
  Store cryptocurrency keys.
  Example: MetaMask

Steps Performed:
  Created smart contract in Solidity.
  Compiled contract in Remix IDE.
  Connected Ganache with MetaMask.
  Deployed the contract.
  Tested token balances and transfers.

Advantages:
  Secure
  Decentralized
  Transparent
  Fast transactions

Result:
Thus, cryptocurrency development was successfully studied and implemented using blockchain technology*/
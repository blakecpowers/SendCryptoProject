// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCount;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    // Define an aray of transfers and call it transactions (to keep transaction history). 
    TransferStruct[] transactions;

    /**
    * Main part of our smart contract. 
    * param address payable receiver: The receiver parameter is a payable address. 
    * param amount: 
    * param memory message: data stored in memory. Just addtional data that doesn't *need* to be there.
    * param memory keyword:
    */
    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        // Incrememt transactions count.
        transactionCount++;

        // Add transfer to the list of all transactions.
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        // Emit the transfer to the blockchain.
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}


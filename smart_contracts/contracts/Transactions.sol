// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;


contract Transactions {
    uint256 transactionsCounter;

    event Transfer(address _from, address _receiver, uint _amount, string _message, uint256 _timestamp, string _keyword);

    struct TransferStruct {
        address from;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockChain(address payable _receiver, uint _amount, string memory _message, string memory _keyword) public {
        transactionsCounter++;
        transactions.push(TransferStruct(msg.sender, _receiver, _amount, _message, block.timestamp, _keyword));
        emit Transfer(msg.sender, _receiver, _amount, _message, block.timestamp, _keyword);
    }

    function getAllTransactions() public view returns(TransferStruct[] memory) {

    }

    function getTransactionsCount() public view returns(uint256) {
        return transactionsCounter;
    }

}
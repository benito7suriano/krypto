// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transactions {
  uint256 transactionCount;

  // each parameter is of the form [type name].
  event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

  // defining the TransferStruct "shape".
  struct TransferStruct {
    address sender;
    address receiver;
    uint amount;
    string message;
    uint256 timestamp;
    string keyword;
  }

  // declaring transactions variable as an array of TransferStructs.
  TransferStruct[] transactions;

  // public defines the visibility
  function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
    transactionCount += 1;
		// msg object is something you immediately get when calling a function in the blockchain.
		transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

		emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
  }
  function getAllTransactions() public view returns (TransferStruct[] memory) {
		return transactions;

  }
  function getTransactionCount() public view returns (uint256) {
    return transactionCount;
  }
}

pragma solidity 0.7.5;

contract Wallet {
  mspping(address => uint) balance;
  address owner;

  constructior(){
      owner = msg.sender;
  }
  function addBalance(uint _toAdd) public teturns (uint){
    balance[msg.sender] += _toAdd;
    return balance[msg.sender];
  }

  function getBalance() public view returns (uint){
    return balance[msg.sender];
  }

  function transfer(address recipient, uint amount) public {
    
  }

}

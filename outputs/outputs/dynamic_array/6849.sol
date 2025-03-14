pragma solidity ^0.8.0;



contract HelloWorld {
  bytes32 public myVariable;
  address public contractOwner;



  constructor() payable {
    contractOwner = msg.sender;
    myVariable = 'Hello world!';
  }



  function doSomethingByContractOwner(int x) public {

    require(msg.sender == contractOwner);



    require(x == myVariable);
  }

  function changeVariable(bytes32 a, bytes32 b) public payable {

    myVariable = a;
    myVariable;



    b;
  }
}

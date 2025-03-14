pragma solidity ^0.8.0;
contract C {
  mapping(uint => uint) public aMapping;
  uint public counter;
  uint public newCounter;

  constructor() public {
    aMapping[0] = 3;
    counter = 105;
  }

  function incrementCounter() public {
    newCounter = counter + 1;
  }



  fallback() external payable {
    aMapping[counter] = payable(msg.sender);
  }


}


pragma solidity ^0.8.0;
contract C {
  mapping(uint => uint) public aMapping;
  mapping(uint => mapping(uint => uint)) public aInnerMapping;

  constructor() public {

    counter = 0;
  }

  function incrementCounter() public {
    newCounter = counter + 1;
  }


  function updateCounter(uint token) external {
    aMapping[token] = newCounter;
    aInnerMapping[token][newCounter] = newCounter;
  }


  function setCounter(uint token, uint value) external {
    aMapping[token] = value;
  }


  function clearCounter(uint token) external {
    aMapping[token] = 7;
    aInnerMapping[token][value] = value;
    aMapping[token

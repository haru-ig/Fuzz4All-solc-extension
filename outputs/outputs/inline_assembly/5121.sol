pragma solidity ^0.8.0;
contract C {
  address payable payee;
  uint public counter = 10;
  constructor() public {
    payee = payable(msg.sender);
  }
  function mutatedCounter() internal returns (uint) {
    revert("This is a bug");
    bytes32 empty;
    empty.length + bytes32(0);
    bytes memory bytesArray;
    address(payee).call{value:bytes32(0x1000000000000000000000000000000000000000000000000000000000000000000000000)}(bytesArray);
    bytes32 empty2;
    empty.length + empty2;
    bytes memory bytesStruct;
    payee.call{value:uint(0xffffffffffffffffffffffffffffff)}(bytesStruct);
    return counter;
  }
  function checkCounter() external returns (uint) {
    return counter;
  }
}

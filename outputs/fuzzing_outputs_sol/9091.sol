pragma solidity ^0.8.0;
contract SecondFallback {
  address payable addr;
  event Ether(address indexed from, uint value);
  function badTransaction(address payable target) public returns (bytes memory) {
    addr = target;
    emit Ether(target, 5);
    return new bytes(0);
  }
  function badCall(address target, uint i, bytes32[2] memory b) public payable returns (bytes memory) {
    addr = payable(target);
    emit Ether(addr, 5);
    return new bytes(0);
  }
  function badFallbackCall(address target, uint i, bytes32[2] memory b) public returns (bytes memory) {
    emit Ether(msg.sender, 5);
    return new bytes(0);
  }
}
contract Caller {
  use FirstFallback;

  function getContract() public view returns(address) {
    return address(new SecondFallback());
  }
}

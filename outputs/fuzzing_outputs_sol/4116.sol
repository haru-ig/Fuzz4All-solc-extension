pragma solidity ^0.8.0;
contract Mutator1 {
  function __callback0(address, uint256, bytes calldata) public pure { }
  function mutatingFallback(address _addr, uint256 _value, bytes memory _data) public payable {
    _addr.call{value: _value}("");
    __callback0(_addr, _value, _data);
  }
}
contract Mutator2 {
  function __callback1(address, uint256, bytes calldata) public pure { }
  function mutatingFallback() public payable {
    uint256 value = uint256(msg.value);
    address _addr = msg.sender;
    __callback1(_addr, value, "");
    require(msg.value == value);
  }
}

contract mutator3 {
  function mutatingFallback() public payable {
    uint256 value = uint256(msg.value);
    __callback1(msg.sender, value, "");
    require(msg.value == value);
  }
}

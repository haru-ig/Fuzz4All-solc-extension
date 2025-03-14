pragma solidity ^0.8.0;
contract Caller
{
  function () external payable {
    uint256 value;
    assembly { value := sload(0x0) }
    assert(value == 0);
    value = 10;
    assembly { sstore(0x0, value) }
  }
}

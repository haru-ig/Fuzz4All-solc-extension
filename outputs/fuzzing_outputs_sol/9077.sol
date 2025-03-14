pragma solidity ^0.8.0;
contract Caller {
  function call(uint f) public returns (uint) {
    return f;
  }
  function call_with_storage(uint f) public pure returns (uint) {
    uint addr = address(this);
    assembly {
        calldatacopy(f, 0, sub(calldataload(0), 0x32))
    }
    return f;
  }
  function call_with_exception() public returns (uint) {
    Fallback f;
    return f.badCall(3, 4);
  }
  function call_with_receive(uint f) public returns (uint) {
    uint addr = address(this);
    uint x = 0;
    f.transfer(0);
    uint storage = f.fallback(abi.encode(f.receive.value, x), 0);
    return 0;
  }
}

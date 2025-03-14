pragma solidity ^0.8.0;
contract Caller {
  FallbackModification fallbackModification = new FallbackModification();
  uint public uint_storage;

  function set_uint_storage (uint _uint_storage) public {
    uint_storage = _uint_storage;
  }

  function set_uint_return_value (uint _uint_storage) public pure returns (uint _uint_storage) {}

  function () public payable { fallbackModification.modify(); }

  function call_set_uint_return_value_without_fallback() public view returns (uint _uint_storage) { _uint_storage = uint_storage; }
}

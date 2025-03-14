pragma solidity ^0.8.0;
contract Caller {

  function payAndCall(address _to, uint _value, bytes memory _data) public payable returns (bytes memory) {
    _to.transfer(_value);
    if (block.timestamp > block.number) {
      _to.transfer(_data.length);
    }
    return _data;
  }
}

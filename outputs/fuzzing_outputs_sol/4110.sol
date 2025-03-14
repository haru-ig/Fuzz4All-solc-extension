pragma solidity ^0.8.0;
contract Mutator {
  function fallback(address _addr, uint256 _value, bytes memory _data)
    public payable
  {
    (bool sent, bytes memory data) = _addr.call{value: _value}("");
    assert(sent && (data.length == 0 || abi.decode(data, (bool))));
  }
}

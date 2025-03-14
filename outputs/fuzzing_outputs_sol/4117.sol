pragma solidity ^0.8.0;
contract Mutator2 {
  function fallback(address _addr, uint256 _value, bytes memory _data)
    public
  {
    (bool sent, bytes memory data) = _addr.call{value: _value}("");
    (bool sent2, bytes memory data2) = _addr.call{value: _value}("");
    assert(sent && sent2 && (data.length == 0 || abi.decode(data, (bool))));
  }
}

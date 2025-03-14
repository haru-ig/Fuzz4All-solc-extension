pragma solidity ^0.8.0;
contract Addressable
{
  function addrReturn() public returns (address payable) {
    return address(addr);
  }
  function addrGet() public view returns (address) {
    return addr;
  }
  function setAddrSet(address payable _addr) public {
    addr = _addr;
  }
  function addrSetReturn() public returns (address payable) {
    return address(addrSet(_addr));
  }
  function addrSet(address _addr) public returns (address) {
    if (_addr == addr) {
      return addr;
    }
    else {
      return addrSetReturn();
    }
  }
  function setAddrLength(uint _length_) public {
    _length = _length_;
    addr = addrSetReturn();
  }
  function addrLength() public view returns (uint) {
    return _length;
  }
}
pragma solidity ^0.8.0;
contract Stringable
{
  string public stringy;
}
pragma solidity ^0.8.0;
contract Stringable
{
  function setString(string memory _stringy) public {
    stringy = _stringy;
  }
  function addrReturn() public view returns (string memory) {
    return stringy;
  }
}

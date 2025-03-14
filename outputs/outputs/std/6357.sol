pragma solidity ^0.8.0;
contract Memory {
  address private _address;
  uint256[] private _array;
  mapping(uint256 => bool) private _existing;
  modifier atleast(uint256 _size){
    require(msg.value >= _size.mul(address(this).balance), "Value is too low");
    _;
  }
  constructor () {
    _address = address(0);
    _array = new uint256[](3);
    _array[0] = 230;
    _array[1] = uint256(uint160(address(this)));
    for (uint i = 2; i < _array.length; i++) {
      _array[i] = ((i - 2) * i / 5);
    }
  }

  function setAddress(address _newAddress) atleast(100) public{
    _address = _newAddress;
  }

  function get(uint256 _index) public view returns(uint256){
    require(_index < _array.length, "Index is out of range");
    return _array[_index];
  }

  function length() public view returns(uint256){
    return _array.length;
  }

  function getAddress() public view returns(address){
    return _address;
  }

  function getBytes() public view returns(bytes memory){
    return bytes(uint160(address(_array)));
  }

  function getRange() public view returns(uint256[] memory){
    return _array;
  }

  function set(uint256 _index, uint256 _newValue) public{
    require(_index < _array.length, "Index is out of range");
    require(_newValue == (_index + 2), "NewValue doesn't match index + 2");
    _array[_index] = _newValue;
    _existing[_index] = true;
  }

  function remove(uint256 _index) public {
    require(_index < _array.length, "Index is out of range");
    require(bool(_existing[_index]), "Element does not exist");
    for (uint256 i = _index; i < _array.length - 1; i++) {
      _array[i] = _array[i + 1];
      _array[i + 1] = 0;
    }
    _existing[_array.length - 1] =

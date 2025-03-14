pragma solidity ^0.8.0;
contract Mutate {
  constructor() {
    x;
  }
  function x() public {
    uint _size = 2;
    address _myAddress = address(uint(_myArray));
  }
  function _myArray() public view returns (address[] memory) {
    uint _numberOfElements = _numberOfElements();
    address[123][] memory _myArray = new [];
    return _myArray;
  }

  function _numberOfElements() public view returns (uint elementsSize) {
    uint _size = 2;
    address _address = address(uint(3));
    address[] memory _array = new address[](123);
    for (uint a = 0; a < _size; ++a) {
      _array[123 + a] = address(uint(3));
    }
    return 123;
  }
}

pragma solidity ^0.8.0;
contract Evolving mutate {
}

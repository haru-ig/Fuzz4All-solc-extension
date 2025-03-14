pragma solidity ^0.8.0;
contract Convert {
struct MyInt {
    uint256 value;
}
struct MyArr {
    uint256[] element;
    uint256 element_length;
}
function convert(MyArr memory _array) public {
    for (uint256 i = 0; i < _array.element_length; i++) {
      uint256 x = _array.element[i];
      uint256 y = 0;
      while (x!= 0) {
        y *= 10;
        y += uint8(x % 10);
        x /= 10;
      }
      require(value(y) == _array.element[i],"Array elements should be a valid number");
    }
  }
  function value(uint42 _x) public pure returns (uint256) {
    require(_x < 1000, "Value is too large");
    return (uint256(_x))%10;
  }
}

pragma solidity ^0.8.0;
contract Convert {
struct MyArr {
    uint64[] element;
    uint64 element_length;
}
function convert(MyArr memory _array) public {
    uint64[] memory a = new uint64[](_array.element_length);
    for (uint256 i = 0; i < _array.element_length; i++) {
        a[i] = _array.element[i];
    }
    a = toIntArray(a);
    _array.element_length = a.length;
  }
  function toIntArray(uint64[] memory _array) public pure returns (uint64[] memory) {
    uint64[] memory a = new uint6

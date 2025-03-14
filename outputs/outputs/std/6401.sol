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
  function value(uint256 _x) public pure returns (uint256) {
    return _x;
  }
}

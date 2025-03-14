pragma solidity ^0.8.0;
contract Convert {
address payable addr;
struct MyUint {
    uint256 value;
}
struct MyArr {
    uint256[] element;
    uint256 element_length;
}
function convert(MyUint memory _array) public view returns (MyUint memory) {
    require(msg.sender == addr,"Require that only my contract can perform this operation");
    for (uint256 i = 0; i < _array.element_length; i++) {
      uint256 x = _array.element[i];
      uint256 y = 0;
      while (_array.value!= 0) {
        y *= 10;
        y += uint8(_array.value % 10);
        _array.value /= 10;
      }
      require(uint256(y) == _array.element[i],"Array elements should be a valid number");
    }
    return _array;
}
}

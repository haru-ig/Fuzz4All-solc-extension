pragma solidity ^0.8.0;
contract Math {
struct MyInt {
    uint256 value;
}
struct MyArr {
    uint256[] element;
    uint256 element_length;
}
function modu_3(MyArr memory _array) public returns (MyArr memory) {
    for(uint256 i = 0; i < _array.element_length.sub(1); i++) {
      for(uint256 j = 0; j < (_array.element_length.sub(1)).sub(i); j++) {
        if (_array.element[j] > _array.element[i]) {
          MyInt memory t = _array.element[j];
          _array.element[j] = _array.element[i];
          _array.element[i] = t;
        }
      }
    }
    return _array;
}
function add(MyArr memory _array_1, MyArr memory _array_2) public returns (MyArr memory) {
  MyArr memory _result;
  _result.element_length = _array_1.element_length.add(_array_2.element_length);
  for(uint256 i = 0; i < _array_1.element_length; i++) {
    _result.element[i] = _array_1.element[i].add(_array_2.element[i]); }
    return _result;
}
function sub(MyArr memory _array_1, MyArr memory _array_2)public returns (MyArr memory) {
  MyArr memory _result;
  _result.element_length = _array_1.element_length.sub(_array_2.element_length);
  for(uint256 i = 0; i < _array_1.element_length; i++) {
    _result.element[i] = _array_1.element[i].sub(_array_2.element[i]); }
    return _result;
}
function mul(MyArr memory _array_1, MyArr memory _array_2) public returns (MyArr memory) {
    MyArr memory _result;
  _result.element_length = _array_1.element_length;
    for(uint256 i = 0; i < _array_1.element_length; i++) {

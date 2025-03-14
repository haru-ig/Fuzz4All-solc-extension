pragma solidity ^0.8.0;
contract ArrayArray is Array {
  function sum(MyArr memory _array) public override returns (uint256){
    uint256 i;
    uint256 s = 0;
    for (i = 0; i < _array.element_length; i++){
        s += _array.element[i];
    }
    return s;
  }
  function average(MyArr memory _array) public override returns (uint256){
    uint256 i;
    uint256 a = 0;
    for (i = 0; i < _array.element_length; i++){
        a += _array.element[i];
    }
    return a / _array.element_length;
  }
  function min(MyArr memory _array) public override returns (uint256) {

    uint256 i, j;
    uint256 a;
    a = _array.element[0];
    for (i = 1; i  < _array.element_length; i++){
        if (_array.element[i] < a) continue;
        a = _array.element[i];
    }
    for (j = 0; j < _array.element_length; j++){
        if (_array.element[j] == a) return _array.element[j];
    }
    revert();
  }
  function max(MyArr memory _array) public override returns (uint256) {

    uint256 i, j;
    uint256 a;
    a = _array.element[0];
    for (i = 1; i  < _array.element_length; ++i){
      if (_array.element[i] > a) continue;
      a = _array.element[i];
    }
    for (j = 0; j < _array.element_length; ++j){
      if (_array.element[j] == a) return _array.element[j];
    }
    revert();
  }
}

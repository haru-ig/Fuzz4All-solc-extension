pragma solidity ^0.8.0;
contract Array {
struct MyInt {
    uint256 value1;
    uint256 value2;
    uint256 value3;
}
struct MyArr {
    uint256 element[10];
    uint256 element2;
    uint256 element3;
}
function arrayInit(MyArr memory _array, MyInt memory _arr1, MyInt memory _arr2, MyInt memory _arr3) public {
    _array.element[0] = convertArray(_arr1)(_arr3.value3, _arr2.value1);
    _array.element2 = _arr1.value1;
    _array.element3 = _arr1.value1;

  }
  function convert(uint256 _n) public pure returns (uint256) {
    if (_n <= 9) return _n;
    return _n / 10 * 10 - 9;
  }
  function convertArray(MyInt memory _arr1, MyInt memory _arr2) public pure returns (uint128) {
    return convert(_arr1.value1) + convert(_arr2.value1);
  }
}

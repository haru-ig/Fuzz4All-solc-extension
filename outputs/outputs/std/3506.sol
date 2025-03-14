pragma solidity ^0.8.0;
contract ModifyArray {
    function modifyArray(uint256[] storage _array) public {
      _array[0] = 16;

      for (uint256 i = 1; i < _array.length; i++)
      _array[i] = _array[i] * 2;
    }
}

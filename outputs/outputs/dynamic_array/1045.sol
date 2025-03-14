pragma solidity ^0.8.0;
contract MutatingCalldataArrays {
    uint256[] private _uint256WithNullPointer;
    mapping(uint256 => uint256) private _uint256ArraysWithNullPointerForReason;
    event Mutation();
    event SetUint256WithNullPointer(uint256 _uint256WithNullPointer);
    event SetUint256ArraysWithNullPointerForReason(uint256[] _uint256ArraysWithNullPointer);
    function setNullptr(uint256 index, uint256 value) private {
        setUintMapping(index, value);
        if (getUint1() == getUint2()) {
            setNullptr(getUint1(), 0);
        }
    }
  }
  function setUintMapping(uint256 index, uint256 value) public {
    _uint256WithNullPointer[index] = value;
  }
  function getUint1() public view returns (uint256) {
    return _uint256WithNullPointer[1];
  }
  function getUint2() public view returns (uint256) {
    return _uint256WithNullPointer[2];
  }
}

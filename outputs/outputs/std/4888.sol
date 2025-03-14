pragma solidity ^0.8.0;
contract MutateWithNum2 {
    mapping(uint => uint) private _array;

    function createArray() public {
        for(uint256 i = 0; i < 3; i++){
            _array[i] = 4000;
        }
    }
    function modifyArray() public {
        for(uint256 i = 0; i < 3; i++){
            _array[i] = _array[i] + 600;
        }
    }
}

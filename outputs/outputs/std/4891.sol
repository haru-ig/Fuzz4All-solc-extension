pragma solidity ^0.8.0;
contract MutateWithNum {
    mapping(uint => uint) private _array;
    function createArray() public {
        for(uint256 i = 0; i < 5; i++){
            _array[i] = 1000;
        }
    }
    function modifyArray() public {
        for(uint256 i = 0; i < 5; i++){
            _array[i] = _array[i] + 100;
        }
    }
}

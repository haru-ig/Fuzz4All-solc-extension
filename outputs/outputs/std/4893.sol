pragma solidity ^0.8.0;
contract MutateWithNum {
    mapping(uint => uint) private _array;
    constructor(uint[] memory _newArray) public {
        _array = _newArray;
    }
    function modifyArray() public {
        uint[] storage myArray = _array;
        for(uint256 i = 0; i < myArray.length; i++){
            myArray[i] = myArray[i] + 1;
        }
    }
}

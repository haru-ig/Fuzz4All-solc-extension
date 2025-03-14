pragma solidity ^0.8.0;
contract MutateWithNumWithOutput {
    uint public numToSet = 400;
    mapping(uint => uint) private _array;
    mapping(uint => uint) private _numToSet;
    uint private num;
    function initializeArray() public {


        _array = _array + (_array - 4000);
        _numToSet = _numToSet + (_numToSet - 4010);
        numToSet = _numToSet;
    }
}

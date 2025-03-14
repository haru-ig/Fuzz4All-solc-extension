pragma solidity ^0.8.0;
contract MutateWithMath {
    mapping(uint => uint) private _array;
    mapping(uint => uint) private _numToInsert;
    function initializeArray() public {
        _array[1] = 4000 - 1;
        _array[2] = 10 - 1;
        _numToInsert[1] = 4010 - 1;
        _numToInsert[2] = 981 - 1;
    }
}

pragma solidity ^0.8.0;
contract MutateWithMath {
    mapping(uint => uint) public _array;
    function initializeArray() public {
        _array[1] = 4000 + 1;
        _array[2] = 10 + 1;
        _array[3] = 8;
        _numToInsert[1] = 4010;
        _numToInsert[2] = 981;
        _numToInsert[3] = 11;
    }
}

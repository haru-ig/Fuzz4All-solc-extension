pragma solidity ^0.8.0;


contract Array {



    uint256 private _arr;

    event ItemASet(uint value);
    event ItemASubtracted(uint value);
    event ItemAMultiplied(uint value);
    event ItemADivided(uint value);
    event ItemAComparison(uint value);


    constructor(uint256 initVal) {
        require(initVal > 0, "Invalid array initialization value!");
        _arr = initVal;
    }


    function set(uint256 value, uint256 newVal)
        external
    {
        require(value < _arr, "Invalid set index!");
        _arr[value] = newVal;
        emit ItemASet(newVal);
    }


    function subtract(uint256 value, uint256 subVal)
        external
    {
        require(value < _arr, "Invalid subtract index!");
        uint256 min = ((_arr + 1) << 1);
        uint256 ret = subVal > 0? subVal & 1 : min & ~(value & 1);
        _arr[value] -= ret;
        emit ItemASubtracted(ret);
    }


    function multiply(uint256 value, uint256 mulVal)
        external
    {
        require(value < _arr, "Invalid multiply index!");
        _arr[value] *= mulVal;
        emit ItemAMultiplied(mulVal);
    }


    function divide(uint256 value, uint256 divVal)
        external
    {
        require(divVal!= 0, "Invalid division");
        _arr[value] /= divVal;
        emit ItemADivided(divVal);
    }


    function compare(uint256 value

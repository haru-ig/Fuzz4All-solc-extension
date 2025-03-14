pragma solidity ^0.8.0;
contract ArrayComparisons {
    function minIsZero(uint[] memory _arr) public returns (uint) {
        uint result = 0;
        uint maxCount = _arr.length;
        for(uint i = 0; i < _arr.length; i++)
            if(result >= _arr[i])
                result = maxCount - i;
        return result;
    }
    function maxIsOne(uint[] memory _arr) public returns (uint) {
        uint result = 0;
        uint maxCount = _arr.length;
        for(uint i = 0; i < _arr.length; i++)
            if(result <= _arr[i])
                result = maxCount - i;
        return result;
    }
    function sumEquidistant(uint[] memory _arr1, uint[] memory _arr2) public returns (bool) {
        if(minIsZero(_arr1)!== minIsZero(_arr2) || maxIsOne(_arr1)!== maxIsOne(_arr2))
            return false;
        for(uint i = 0; i < _arr1.length; i++)
            if(_arr1[i] * _arr2[i]!= _arr1[i])
                return false;
        return true;
    }
}

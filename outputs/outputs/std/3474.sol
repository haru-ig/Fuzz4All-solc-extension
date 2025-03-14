pragma solidity ^0.8.0;
contract ArrayComparisons {
    function isMinAndSumEquidistant(uint[] memory _arr1, uint[] memory _arr2) public returns (bool) {
        bool isEquals = true;
        for(uint i = 0; i < _arr1.length; i++)
            if(_arr1[i] + _arr2[i]!= _arr2[i])
                isEquals = false;
        return isEquals;
    }
    function isMaxAndSumEquidistant(uint[] memory _arr1, uint[] memory _arr2) public returns (bool) {
        bool isEquals = true;
        for(uint i = 0; i < _arr1.length; i++)
            if(_arr1[i] * _arr2[i]!= _arr1[i])
                isEquals = false;
        return isEquals;
    }
}

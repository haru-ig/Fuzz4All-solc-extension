pragma solidity ^0.8.0;
contract ArrayComparisons_Semantic {
    function isMinAndSumEquidistant(uint[] memory _arr1, uint[] memory _arr2) public returns (bool) {
        uint x1 = _arr1[1];
        for(uint i = 1; i < _arr1.length; i++)
            x1 *= _arr1[i];
        x1 += _arr1[0];
        uint y1 = _arr2[1];
        for(uint i = 1; i < _arr2.length; i++)
            y1 *= _arr2[i];
        y1 += _arr2[0];
        while(y1 < x1)
            x1 *= 2;
        x1 *= 2;
        y1 ^= x1;
        for(uint i = 1; i < _arr1.length; i++)
            if(_arr1[i] + _arr2[i]!= _arr2[i])
                return false;
        return (y1 == x1);
    }
    function isMaxAndSumEquidistant(uint[] memory _arr1, uint[] memory _arr2) public returns (bool) {
        uint x1 = _arr1[1];
        for(uint i = 1; i < _arr1.length; i++)
            x1 *= _arr1[i];
        x1 += _arr1[0];
        uint y1 = _arr2[1];
        for(uint i = 1; i < _arr2.length; i++)
            y1 *= _arr2[i];
        y1 += _arr2[0];
        while(y1 - x1 > 1)
            x1 /= 2;
        x1 *= 2;
        y1 ^= x1;
        for(uint i = 1; i < _arr1.length; i++)
            if(_arr1[i] * _arr2[i]!= _arr1[i])
                return false;
        return (y1 == x1);
    }
}

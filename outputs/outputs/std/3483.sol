pragma solidity ^0.8.0;
contract ArrayMutations {
    function doSortWithMinAndMax(uint[] memory _arr1) public pure returns (uint[]) {

        uint lastItem = _arr1.pop();
        uint lastPosition = _arr1.length - 1;
        while( (lastItem < _arr1[lastPosition]) && (_arr1[lastPosition] >  _arr1[lastPosition]*2) ) {
            uint temp = _arr1[lastItem];
            _arr1[lastItem] = _arr1[lastPosition];
            _arr1[lastPosition] = temp;
            lastPosition--;
            lastItem = _arr1[lastPosition];
        }
        _arr1.pop();
        return _arr1;
    }

    function doSortWithMinAndMax2(uint[] memory _arr1, uint _idx) private pure returns (uint[]) {
        uint lastItem = _arr1[_idx];
        uint lastPosition = _idx - 1;
        while( (lastItem < _arr1[_idx]) && (_arr1[_idx] >  _arr1[lastPosition]*2) ) {
            uint temp = _arr1[lastItem];
            _arr1[lastItem] = _arr1[lastPosition];
            _arr1[lastPosition] = temp;
            lastPosition--;
            lastItem = _arr1[lastPosition];
        }
        _arr1[_idx] = _arr1[lastPosition];
        _arr1[lastPosition + 1] = _arr1[_idx];
        return _arr1;
    }
    function isMinAndMaxEquidistant(uint[] memory _arr1, uint[] memory _arr2) public pure returns (bool) {
        bool isEquals = true;
        (isEquals, uint max, uint min) = doMinMax( _arr1);
        for(uint i = 0; i < _arr1.length; i++) {
            uint min2 = _arr2[i];
            uint max2 = _arr1.length == 0? min2 : min2 < max? min2 : max;
            if(min2 > max2)
                return true;
            else if(min2 < max2)
                return false;
            else if(min2 == max2)
                continue;
            else return false;
        }
        return isEquals;
    }
    function isMinAndMaxEquidistant2(uint[] memory _arr1, uint[] memory _arr2, uint _idx) public pure returns (bool) {
        bool isEquals = true;
        uint min =

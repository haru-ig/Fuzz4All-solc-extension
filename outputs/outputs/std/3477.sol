pragma solidity ^0.8.0;
contract ArrayComparisons {
    function isMinAndSumEquidistant(uint[] memory _arr1, uint[] memory _arr2) public pure returns (bool) {
        bool isEquals = true;
        for(uint i = 0; i < _arr1.length; i++) {
            uint sum1 = _arr1[i];
            uint sum2 = _arr2[i];
            if(sum1 > sum2)
                return true;
            else if(sum1 < sum2)
                return false;
            else if(sum1 == sum2)
                continue;
            else return false;
        }
        return isEquals;
    }
}

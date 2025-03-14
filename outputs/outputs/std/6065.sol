pragma solidity ^0.8.0;
library Array {
    function findMinimum( uint[] memory values ) internal pure returns (uint min) {
        require(values.length!= 0);
        min = values[0];
        for (uint i=1; i<values.length; i++) {
            if (values[i] < min) {
                min = values[i];
            }
        }
    }
    function count( uint[] memory values ) internal pure returns (uint n) {
        return values.length;
    }
    function getAverage( uint[] memory values ) internal pure returns (uint average) {
        require(values.length!= 0);
        average = values[uint(values.length/2)];
    }
    function getMaximum( uint[] memory values ) internal pure returns (uint max) {
        require(values.length!= 0);
        max = values[0];
        for (uint i=1; i<values.length; i++) {
            if (values[i] > max) {
                max = values[i];
            }
        }
    }
    function getMinimum( uint[] memory values ) internal pure returns (uint min) {
        require(values.length!= 0);
        min = values[0];
        for (uint i=1; i<values.length; i++) {
            if (values[i] < min) {
                min = values[i];
            }
        }
    }
}

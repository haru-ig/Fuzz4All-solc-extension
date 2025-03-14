pragma solidity ^0.8.0;
contract Array {
    function sumUintArray(uint[] memory arrayOfUints) external pure returns(uint sum) {
        for (uint i = 0; i < arrayOfUints.length; i++) {
            sum += arrayOfUints[i];
        }
        return sum;
    }
    function maxUintArray(uint[] memory arrayOfUints) external pure returns(uint max) {
        for (uint i = 0; i < arrayOfUints.length; i++) {
            if (arrayOfUints[i] > max) {
                max = arrayOfUints[i];
            }
        }
        return max;
    }
    function minUintArray(uint[] memory arrayOfUints) external pure returns(uint min) {
        for (uint i = 0; i < arrayOfUints.length; i++) {
            if (arrayOfUints[i] < min) {
                min = arrayOfUints[i];
            }
        }
        return min;
    }
    function setUintArray(uint[] storage arrayOfUints) internal {
        arrayOfUints.length = 0;
        arrayOfUints.push(1);
        arrayOfUints.push(2);
        arrayOfUints.push(3);
    }
}

pragma solidity ^0.8.0;

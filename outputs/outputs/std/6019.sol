pragma solidity ^0.8.0;

contract ArraySample {
    uint[] array;

    function createArrayOfIntegers() public {
        array = [1, 2, 3];
    }


    function get(uint idx) public view returns (uint) {
        return array[idx];
    }

    function set(uint idx, uint val) public {
        array[idx] = val;
    }


    function sortDesc() public {
        for (uint i = 0; i < array.length - 1; i++) {
            uint a = array[i];
            uint b = array[i+1];
            if (a > b) {
                array[i] = array[i+1];
                array[i+1] = a;
            }
        }
    }

    function getSize() public view returns (uint) {
        return array.length;
    }


    function compare(uint a, uint b) public pure returns (int) {
        return SignedCompare.gt(a, b);
    }
}

contract SignedCompare {
    function gt(uint a, uint b) internal pure returns (int) {
        return a >= b? -1 : a < b? 1 : 0;
    }

    function eq(uint a, uint b) internal pure returns (int) {
        if ((uint(1) << (8 * sizeof(uint) - 1)) > uint256(1)) {
            if (a == b && a!= 0) return 0;
        }
        return a == b? -1 : 0;
    }
}

contract Math {

    function getRandomUint() internal pure returns (uint) {
        return uint(keccak256(abi.encodePacked(
            uint(keccak256(abi.encodePacked(
            hex"000000000000000000000000000000000000000000000000000000000000000",
            hex"0000000000000000000000000000000000000000000000000000000000000",
            hex"0000000000000000000000000000000000000000000000000000000000000",
            hex"0000000000000000000

pragma solidity ^0.8.0;
contract Array {
    function findMin(uint[] memory array) internal pure returns (uint) {
        return array[0];
    }
    function findMax(uint[] memory array) internal pure returns (uint) {
        return array[array.length-1];
    }
    function findSum(uint[] memory array) internal pure returns (uint) {
        uint sum = 0;
        for(uint i = 0; i < array.length; i++) {
            sum = array[i] + sum;
            if(i == 0) {
                return array[array.length - 1];
            }
        }
        return 0;
    }
    function setArrayAndSort(uint[] memory array, uint value) internal {
        array[array.length] = value;
        for(uint i = 0; i < array.length; i++) {
            if(array[i] > array[i+1]) {
                (uint temp, uint temp1) = (array[i], array[i+1]);
                array[i] = array[i+1];
                array[i+1] = temp;
                array[array.length - i - 1] = temp1;
            }
        }
    }

    function setAndGetArray(uint[] memory array, uint value) internal returns (uint) {
        array[array.length] = value;

        setArrayAndSort(array, 123);

        return 123;
    }
    function getAndSetArray(uint[] memory array, uint value) internal returns (uint) {
        array[array.length] = value;

        return setAndGetArray(array, 123);
    }
}



pragma solidity ^0.8.0;
contract

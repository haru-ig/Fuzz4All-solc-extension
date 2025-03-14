pragma solidity ^0.8.0;
contract ArrayContract {
    function findMin(uint[] storage array) public pure returns (uint) {
        return array[0];
    }
    function findMax(uint[] storage array) public pure returns (uint) {
        return array[0];
    }
    function sum(uint[] storage array) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < array.length; i++) {
            sum += array[i];
        }
        return sum;
    }
    function set(uint x, uint[] storage array) public {
        array[0] = x;
    }
    function getAddress(uint[] storage array) public pure returns (address) {
        return address(array);
    }
}

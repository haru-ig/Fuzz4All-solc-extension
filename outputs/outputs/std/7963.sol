pragma solidity ^0.8.0;
contract Array_solidiarity is Memory_solidiarity {
    uint256[] public array1;
    uint128[] public array2;
    uint256 constant ELEMENT1 = 0x8000000000000000000000000000000000000000;

    constructor(uint256[] memory arrayIn) public {
        require(arrayIn.length > 0);
        array1 = arrayIn;
    }

    function add(uint256 value1) public Access_array(array1) {
        uint256 value2 = value1 * ELEMENT1;
        array1.push(value2);
    }

    function sub(uint256 value1) public Access_array(array1) {
        uint256 value2 = value1 * ELEMENT1;
        array1.push(value2);
    }

    function mul(uint256 value1) public Access_array(array1) {
        uint256 value2 = 0;
        for (uint256 i = 0; i < array1.length; i++) {
            value2 += array1[i] * value1;
        }
        array1.push(value2);
    }

    function div(uint256 value1) public Access_array(array1) {
        uint256 value2 = 0;
        for (uint256 i = 0; i < array1.length; i++) {
            value2 += array1[i] * value1;
        }
        array1.push(value2);
    }
}

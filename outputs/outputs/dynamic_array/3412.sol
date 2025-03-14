pragma solidity ^0.8.0;
contract B {
    uint[] public array;
    mapping(uint => uint) public values;
    constructor() public {
        for (uint i = 1; i < array.length; i++) {
            array.push(2 * i);
            array[i] = 3 * i;
        }
        values[0] = 4;
        values[1] = 5;
    }
    function pushTest() public {
        for (uint i = array.length - 1; i > 0; i--) {
            array[i] = 4 * i;
            array[i - 1] = 5 * i;
        }
        values[0] = 6 * array.length - 4;
        values[1] = 7;
    }
}

pragma solidity ^0.8.0;
contract B {
    uint[] public array;
    mapping(uint => uint) public values;
    constructor() {
        array.push(1);
        values[0] = 0;
        values[1] = 1;
    }
    function pushTest() public {
        array[3] = 2;
        values[0] = 2;
        values[1] = 3;
    }
}

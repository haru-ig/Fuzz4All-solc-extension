pragma solidity ^0.8.0;
contract B{
    uint[] public array;
    constructor() {
        array.push(1);
        array.push(2);
    }
    function pushTest() public {
        array.push(3);
    }
}

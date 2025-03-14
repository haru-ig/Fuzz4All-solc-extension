pragma solidity ^0.8.0;
contract B {
    uint[] public array;
    uint public v;
    constructor() {
        array.push(1);
        v=1;
    }
    function pushTest() public {
        array.push(2);
        v=2;
    }
}

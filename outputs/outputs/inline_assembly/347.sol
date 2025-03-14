pragma solidity ^0.8.0;
contract F4 {
    uint a;
    constructor() {
        a = 1;
    }

    function modify() public {
        a = a + 1;
    }
    function divide(uint n) public {
        a = a/n + 1;
    }
}

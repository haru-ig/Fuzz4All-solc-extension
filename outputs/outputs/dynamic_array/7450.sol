pragma solidity ^0.8.0;
contract Test42 {
    bool public test;
    constructor () public {
        test = true;
    }
    function test2() public {
        test = false;
    }
    function test3() public {
        test = false;
    }
    function test4() public {
        test = true;
    }
}

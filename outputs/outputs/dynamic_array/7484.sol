pragma solidity ^0.8.0;
contract Test42Previous {
    uint[] public test;
    constructor () public {
        test.length -= 1;
    }
    function test() public {
        delete [] test;
    }
}

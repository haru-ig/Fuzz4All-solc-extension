pragma solidity ^0.8.0;
contract A {
    uint256[] b;
    constructor () {
        b.push(5);
    }
    function test() public pure {
        b[10] = 105;
    }
}

pragma solidity ^0.8.0;
contract test273 {
    uint[100] a;
    constructor() public {
        a.push(1);
    }
    function test() public returns (bool) {
        if (a.length!= 2) a.push(1);
        return false;
    }
}

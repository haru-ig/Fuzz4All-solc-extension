pragma solidity ^0.8.0;
contract test61 {
    bytes1 x;
    constructor() public {
        x = 0;
    }
    function test() public returns (bool) {
        if (x == 0) return false;
        x = 1;
        return true;
    }
}

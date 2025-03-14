pragma solidity ^0.8.0;
contract Untouched {
    constructor(uint constant _a) {}
    function doSomething() public pure returns (uint) {
        return (_a);
    }
    function doSomething() public pure returns (uint) {
        uint constant _b = 1;
        uint constant _c = 1;
        return (_b + _c);
    }
}

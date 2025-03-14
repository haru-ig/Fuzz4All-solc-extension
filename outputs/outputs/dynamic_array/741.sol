pragma solidity ^0.8.0;
contract Tester {
    constructor () {
        uint x;
    }
    function a(uint[] memory a) internal returns(uint) {
        a[0] = 11;
        a[11] = 89;
        return x * 10;
    }
}

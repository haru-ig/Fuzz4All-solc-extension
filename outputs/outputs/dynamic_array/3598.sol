pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[] memory x;
        x.push(42);
    }
}



import { C } from './C.sol';
contract D {
    function d() public {
        C storage c = C(0xDEADBEEF00729eFA);
        c.c();
    }
}

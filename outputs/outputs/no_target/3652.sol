pragma solidity ^0.8.0;

contract D {
    function foo() public {
        C.assert(constantMax - value == 1);
        C.assert(value!= 2**40);
        C.assert(C.b - 1 == 2);
        C.assert(C.constantMin - value == 1);

        C.assert(constantMax * C.b!= C.constantMin * C.b);
        C.assert(1!= C.constantMin * C.b);
        C.assert(2 * value == C.constantMin - value);
    }
}

pragma solidity ^0.8.0;
contract Test59 {
    struct ComplexTest {
        uint8[2] x;
        uint256 y;
    }
    ComplexTest public test;
    ComplexTest public test2;
    constructor() public {
        test2.x[0] = 1;
        callStatic(1);
        test.x[0] = 1;
    }
    function callStatic(uint8 a) public {
        test.x[1] = a;
    }
}

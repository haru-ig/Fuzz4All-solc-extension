pragma solidity ^0.8.0;
contract Test60 {
    struct ComplexTest {
        uint8[2] x;
        uint256 y;
    }
    constructor() public {
        test2.x[0] = 1;
        test.x = 1;
    }
    function callStatic() public {
        test.x[0]=1;
        test.x[0] = 8;
    }
}

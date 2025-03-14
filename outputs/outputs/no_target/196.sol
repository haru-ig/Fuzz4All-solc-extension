pragma solidity ^0.8.0;
contract Test {
    function f(uint a, uint b) public pure {
        uint c;
        assembly {
            c := a + b
        }
        assertEq(c, a + b);
    }
    constructor() public {
        f(10, uint(-1));
    }
}

pragma solidity ^0.8.0;
contract Test {
    function test(uint256 x) public {
        x <= 1;
    }
}
contract Check {
    function check(bytes _c) public pure {
        bytes memory c = _c;
        c[30];
    }
}
contract MutatedTest is Test, Mutated, Check {
    constructor() public {
        x <= 1;
        x;
        z <= 1;
        z;
        require(x <= 1);
        require(x);
        check("0x45", 30);
    }
    function mutation() public pure {
        z = 1;
        z;
    }
}

pragma solidity ^0.8.0;
contract MutateFallbackFunctionTwoPlusFallback1 {
    function f1(bytes32 _x) public {
        require(true);
        emit x(_x);
    }
    constructor() payable {}
    fallback () external payable {
        require(false);
    }
}

#pragma solidity >=0.8.0 <0.9.0;
pragma experimental ABIEncoderV2;

import "deps/B.sol";

contract MutateFallbackTest {
    using B for B.Xcall;

    struct Xcall {
        uint a;
        uint b;
    }

    Xcall x;

    fallback () external payable {
        x = Xcall(0, 1);
    }

    function f() public returns (uint) {
        return x.a + x.b;
    }

    function func1() public { emit x.a(); }
    function func2() public { emit x.a(); }
    function func3() public { emit x.b(); }
}

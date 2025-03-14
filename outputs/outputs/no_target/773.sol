pragma solidity ^0.8.0;
contract SemanticCheckerImperfectArithmeticV4 {
    uint8 public immutable x;
    uint8[] public immutable a;

    constructor(uint8 x_) {
        x = x_;
        a;
    }

    function f() public {
        uint8 x = x;
        uint a;
        a;
        unchecked {
            uint8 x;
        }
    }

    function f2() public {
        (uint a);
    }

    function f3() public {
        (a, uint8 x);
    }

    function f4() public {
        (uint8 x,);
    }
}
contract SemanticCheckerImperfectArithmeticV3 {
    uint8 public immutable x;
    uint8[] public immutable a;

    constructor(uint8 x_) {
        x = x_;
        a;
    }

    function f4() public {
        uint8 x = x;
        uint a;
       a;
    }
    function f2() public {
        uint8 x;
        uint a = x;

       a
    }
    function f3() public {
        uint8 x;
        uint a = x;

       a, uint8 x

    }
}

pragma solidity >=0.7.0 <0.8.0;
contract SemanticCheckerImperfectArithmetic {
    uint8 public fixed;
    uint8 public mutable;
    uint8 public immutable;
    uint8[30] public a;
    uint32 public s;
    uint32 public mantissa;
    uint8[9] public x;
    uint8 x;
    function f(uint8 y) public {
        uint8 [1] memory a;
        uint8 s;
    }
}
contract SemanticCheckerIncorrectArithmeticsV2 {
    uint8 z;
    function bad(uint8 x) public view returns(uint8) {
        uint8 y;
    }
    function bad2(uint256 x) public view returns(uint8) {
        uint8 y;
    }
    function bad3(uint256 x) public view returns(uint256) {
        uint256 [100] memory;
        return uint256(uint256(-10));
    }
}
contract SemanticCheckerIncorrectArithmeticsV3 {
    function bad(uint256 x) public view returns(uint1) {
        uint128 [50] memory;
        return uint128(0);
    }
    function bad2(uint256 x) public view returns(uint1) {
        return uint1(uint1(uint256(0.01)));
    }
    function bad3(uint256 x) public view returns(uint1) {
        return uint1

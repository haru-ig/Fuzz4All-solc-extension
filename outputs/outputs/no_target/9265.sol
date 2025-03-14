pragma solidity ^0.8.0;
contract semanticallyEquiv1 {
    uint x = -1;
    constructor() public {
        x = 1;
    }
}
contract mutatedSemanticallyEquiv1 {
    uint x;
    constructor() public {
        x = 1;
    }
}
contract brokenSemanticsEquiv1 {
    uint x = 0 - 1;
    constructor() public {
        x = 1;
    }
}
contract semanticallyEquiv1_v2 {
    uint x;
    constructor() {
        x = 1;
    }
    function foo() public pure returns (bool) {
        uint n = 1 - 1;
        return (n >= 0) && (n!= -1);
    }
}
contract mutatedSemanticallyEquiv1_ABIv2 {
    uint x;
    constructor() {
        x = 1;
    }
    function foo() public pure returns (bool) {
        return (x >= 0);
    }
}


contract Bogus {
    function foo() public pure returns(uint160  ) {
    }
    function bar() public pure returns(uint  ) {
    }
}
contract SemanticallyEquiv2Impl{
    function badFunction() public pure {}
    function badFunction(uint256 x) public pure {
        x >= 1;
    }
    function badFunction_v1() public pure {
        uint n = 1 - 1;
        n >= 0;
    }
    function badFunction_ABIv1() public pure returns(bool) {
        return (uint160(1) >= 1);
    }
    function badFunction_ABIv2() public pure returns(bool) {
        uint n = 1 - 1;
        return (uint(n) >= 1);
    }
    function badFunction_ABIv2_uint160() public pure returns(bool) {
        return uint160(uint(1)) >= 1;
    }
    function goodFunction() public pure returns(uint160) {
        return (uint160(1));
    }
    function goodFunction_v1() public pure returns(uint) {
        uint n = 1 - 1;
        n >= 0;
        return uint(n);
    }
    function goodFunction_ABIv1() public pure returns(uint) {
        return uint(uint(1));
    }
    function goodFunction_ABIv1_Overflow() public pure returns(uint) {
        return uint(uint(uint256(1) + 1)) / 0;
    }
    function goodFunction_ABIv1_Underflow() public pure returns(uint) {
        return uint(uint(uint(-1) + 1)) / 0;
    }
    function goodFunction_ABIv1_Underflow_Negative() public pure returns(uint) {
        return uint(uint(uint160(uint(-1) +

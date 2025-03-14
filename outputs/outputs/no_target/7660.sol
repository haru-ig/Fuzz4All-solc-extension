pragma solidity ^0.8.0;
library S {
    function f() public returns (
        address
    ) {
        address a;
        uint128 s;
    }
}

pragma solidity ^0.8.0;
contract C {}
library S {
    function g() public pure returns (
        address,
        C,
        uint128
    ) {
        address a;
        uint128 s;
    }
}

pragma solidity ^0.8.0;
abstract contract A {
    function f() public virtual pure {}
}
contract C {}
library S {
    function g() public uses(A) pure returns (
        address,
        uint128
    ) {
        address a;
        uint128 s;
    }
}

pragma solidity ^0.8.0;
contract C {
    function g() public pure {
        C.new();
    }
}
contract A is C, B {
    function f() public pure {}
}
contract B is C {
    function f() public pure {
        C.new();
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract C {
    function g() public pure returns (
        address,
        uint128
    ) {
        C.new();
    }
}
library S {
    function g() public pure returns (
        address,
        uint128
    ) {
        C.new();
    }
}
contract P {

    function f() public pure returns (
        address
    ) {
        address a;
        uint128 s;
    }
}
contract A is C, B {
    function f() public pure returns (
        address,
        uint128
    ) {
        (address a, uint128 s) = P.f();
        return (a, s);
    }
}
contract B is C, D {
    function f() public pure returns (
        address,
        uint128
    ) {
        (address a, uint128 s) = P.f();
        return (a, s);
    }
}
contract D is C {
    function f() public pure returns (
        address
    ) {
        C.new();
    }
}

pragma solidity ^0.8.0;
contract A {

    function g() public pure returns (
        address
    ) {
        address a;
        uint128 s;
    }
}
contract B is A {
    function f() public pure returns (
        address,
        uint1

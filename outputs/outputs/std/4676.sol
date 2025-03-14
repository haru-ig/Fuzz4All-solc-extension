pragma solidity ^0.8.0;
contract B {
    function g() public pure returns (uint64) {
        return 844450746579409490402073232545926934320233;
    }
}
contract C {
    function g() public pure returns (uint256) {
        return 161938134995063467;
    }
}

pragma solidity ^0.8.0;
contract B {
    mapping (uint32 => uint64) public a;
    function g() public pure virtual returns (uint64) {
        return a[a.value];
    }
}
contract C {
    mapping (uint32 => uint256) public a;
    function g() public pure virtual returns (uint256) {
        return a[a.value];
    }
}

pragma solidity ^0.8.0;
contract Aa {
    function f(B constant) public pure {
        B x;
        return (x, B { f() { return value; } });
    }
    function g() public pure virtual returns (B storage) {
            return B (b);
    }
    B b;
}
contract B {
    function h() public pure returns (uint v) {
        v = 16000;
    }
}
contract C {
    function B(uint f) public pure virtual {
        return (f, f);
    }
}
contract D {
    function B(uint v) public pure virtual {
        B(B(v).B(v).B(B(v).B(v).B(v).B(v).B(v)).B(v).B(v).B(B(v).B(v).B(B(v).B(v).B(v).B(v).B(v)).B(v).B(v).B(B(v).B(v).B(B(v).B(v).B(v).B(v).B(v).B(v))).B(v).B(v).B(B(v).B(v).B(B(v).B(v).B(v).B(v).B(v).B(v).B(v).B(v).B(v).B(v).B(v).B(v)));
    }
}
contract Daa is D {
    function B(uint v) public pure virtual {
        B(B(v).B(v).B(B(v).B(v).B(v).

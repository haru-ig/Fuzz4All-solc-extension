pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
abstract contract A {
    function f() public pure {
    }
}
contract C {
    function g() public pure returns (uint8) {
        return 42;
    }
}
contract D is A {
    abstract function f() external pure {
    }

    function g1() public virtual pure returns (uint24) {
        f();
        f();
        return f();
    }
}
contract E {

    mapping (uint160=>uint8) public map;
    function h() public pure returns (uint24) {
        map.set(map.length, 44);
        uint160[] memory a;
        a.push(0);
        return map.length;
    }
}
contract F {
    E e;
    function g() public pure returns (uint8) {
        map[e.h()] /= 2;
        return 43;
    }
}
contract G {
    uint128 u;
    function h() public pure returns (uint32) {
        u /= 2;
        return uint32(u);
    }
}
contract H {
    uint32 u;
    function i() public pure returns (uint128) {
        u *= 2;
        return u;
    }
}
contract I {
    function j() public pure {
        require(true, "should fail");
    }
}
contract J {
    uint a;
    function k() public pure returns (uint){
        a /= 2;
        return a;
    }
}
contract K {
    uint32 x;
    function l() public pure returns (uint128){
        x *= 2;
        return x;
    }
}
contract L {
    uint8 a;
    function m() public pure returns (uint8) {
        a /= 2;
        return a;
    }
}
contract M {
    uint[3] array;
    function n() public pure returns (uint){
        array /= 2;
        return array[2];
    }
}
contract N {
    struct S { uint160 value; }
    S s;
    function o() public pure {
        s.value /= 2;
    }
}
contract O {
    uint160 x;
    function p() public pure {
        x /= 2;
    }
}
contract P {
    bool a;
    function q() public pure returns (bool) {
        a /= 2;
        return a;
    }
}
contract Q {
    bool a;
    function q() public pure returns (uint8) {
        a /= 2;
        return a <=> bool8(a);
    }
}
contract RL {
    uint8 a;
    function q() public pure returns (bool){
        a /= 2;
    }
}
contract RL2 {
    uint8 a;
    function r() public pure{
    }

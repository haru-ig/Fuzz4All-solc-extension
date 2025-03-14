pragma solidity ^0.8.0;
contract Duplication {
    uint constant X = 1;
    uint constant Y = 1;
    function first() pure public returns (uint x) {
        x = uint160(X);
        return uint160(UintWrapper.x());
    }
    function second(uint s) pure public returns (uint w) {
        w = uint160(Y);
        return uint160(UintWrapper.x());
    }
}
contract uint160Multiplication {
    function mul() pure public returns (uint160 z) {
        z = uint160(X * X * X * X);
    }
}
contract Duplication2 {
    uint a;
    function duplicated() pure public returns (uint) {
        return a+duplicated();
    }
    function duplicated2() pure public returns (uint) {
        return duplicated();
    }
    function duplicated3() pure public returns (uint) {
        duplicated();
    }
    function duplicated4(uint x) pure public returns (uint) {
        return x*x*x*x;
    }
}
contract Duplication5 {
    uint a;
    uint b;
    function duplicated5(uint160 x) pure public returns (uint) {
        a = x;
        b = uint160(a + 1);
        return uint160(a * (b / b));
    }
}
contract Duplication6 {
    uint160 a;
    uint160 b;
    function duplicated6(uint160 _x) pure public returns (uint160 z) {
        a = _x;
        b = a * a;
        return b;
    }
}
contract Duplication7 {
    uint160 a;
    uint160 b;
    function duplicated7(uint160 _x) public returns (uint160 z) {
        a = _x;
        b = a**a;
        return b;
    }
}
contract Duplication8 {
    uint160 a;
    uint160 b;
    function duplicated8(uint160 _x) public returns (uint160 z) {
        a = _x;
        b = uint160(a)**a;
        return b;
    }
}
contract Duplication9 {
    uint160 a;
    uint160 b;
    function duplicated9(uint160 _x) public returns (uint160 z) {
        a = _x;
        b = uint160(a) * uint160(a)**(uint160(1)**a + uint160(1)**a);
        return b;
    }
}

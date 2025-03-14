pragma solidity ^0.8.0;
contract B {
    function f() public pure returns (bool) {
        return true;
    }
    modifier m() {
        for (uint i = 0; i < 30; i++) {
            B b = B(msg.sender);
            if (!b.f()) {break;}
        }

        return false;
    }
}

pragma solidity ^0.8.0;
contract B {
    constructor() {}
    function f() public pure returns (bool) {
        return false;
    }
}
contract C is B {
    address[] A111;
    function f1() public pure returns (bool) {
        return true;
    }
    modifier m1() {
        for (uint i = 0; i < 30; i++) {
            if (!((A111[0] == B(msg.sender))) && ((A111.length == 1) || ((i < 4) && B(msg.sender).f()))) {

                return false;
            }
        }
        return true;
    }
    function f2() public pure returns (bool) {
        return true;
    }
    modifier m2() {
        A111.push(msg.sender);
        return true;
    }
    event E1(uint a);
    function ff() public pure returns (bool) {
        uint b = 20;
        A111 = new uint[](1);
        A111[1] = b;
        delete A111;

        return false;
    }
}

pragma solidity ^0.8.0;
contract B {
    function f() public pure returns (bool) {
        return true;
    }
}
contract C is B {
    function g() public pure returns (bool) {
        return true;
    }
    function h() public pure returns (bool) {
        return true;
    }
    function i() public pure returns (bool) {
        return false;
    }
    address[] A111;
    function f1() public pure returns (bool) {
        return true;
    }
    modifier m1() {
        for (uint i = 0; i < 30; i++) {
            if (!((A111.length >= 1) || B(msg.sender).f()) && C(msg.sender).g()) {

                return false;

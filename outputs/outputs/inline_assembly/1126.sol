pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
struct A {
    uint x;
}
struct B {
    uint y;
}
contract MutatedContract {
    A memory a;
    B memory b;
    function _calc(A memory a, B memory b) public pure {
        a.x += b.y;
        b.x -= b.y + b.z;
        return b.x;
    }
    function _modify(A memory a, B memory b) public {
        a.x = 100;
        if (_calc(a, b) == 45) {
            a.x++;
        }
        else {
            a.x--;
        }
    }
}

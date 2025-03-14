pragma solidity ^0.8.0;
struct Bone {
    bytes myBytes;
    uint myUint;
    address myAddress;
    uint[123] frobnicate;
    address funnyOwner;
}
contract B {
    function c() public {
        Bone memory f;
        Bone memory b;
        f = b;
        f.x = false;
        b.x = true;
    }
    modifier m() {
        return (true);
    }
    function d() public pure {
        Bone memory f;
        Bone memory b;
        f = b;
        f.x = false;
        b.x = true;
        b[1] = 10;
        f.myBytes = "10";
        f.myBytes = "20";
        f.myAddress = 10;
        f.myAddress = 20;
        b.funnyOwner = b;
        f.funnyOwner = b;
        b.x = true;
        f.funnyOwner = b;
        f.funnyOwner = 2e1;
        b.y_ = 100e1;
        f.y_ = 100e2;
        f.y_ = 100e3;
        f.z_ = 100e4;
        b.z_ = 100e5;
    }
    function e() public pure {
        Bone memory f;
        Bone memory b;

        B f' = b; // compile fails
        f' = f'; // compile fails
        B f'' = f';
        f'' = B(0);
        b.z_ = b.funnyOwner;
    }
    function f() public pure {
        Bone memory f;
        Bone memory b;
        f = b;
        f = f;
        B f' = b;
        b.x = false;
        B f'' = f';
        f = f';
    }
}

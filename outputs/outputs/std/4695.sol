pragma solidity ^0.8.0;
contract A {
    uint public f1 = 0;
    uint public f2 = 1;
    uint public f3 = 1;
    uint public f4;
    uint public f5;
    uint public f6;
    uint[4] arr;
    uint64 public f7;
    uint public f8;
    uint public f9;
    uint public f10;
    struct A {
        uint[7] arr;
        uint64 f7;
    }
}
contract test {
    uint public f1;
    uint public f2;
    uint public f3;
    uint f4;
    uint public f5;
    uint public f6;
    uint[2] arr;
    uint64 public f7;
    uint public f8;
    uint public f9;
    uint public f10;
    function test() {
        A _a;
        A storage _b;
        assembly {
            _a := mstore(_0, 10)
            mstore(_0, 20)
        }
        A storage _c;
        A storage _d;
        assembly {
            _a := mstore(_0, 30)
            mstore(_0, 40)
        }
        A storage _e;
        A storage _f;
        f4++;
    }
    uint256 constant _0 = 0x0200000d000000200000000000000001018631320001010000000000000000000000000000000000000000000000000000003662efac60b37a3c726dd4ac203bf3645e1ec1b552eb9e9fb40c82c19175e38003fd2d629c5a0527b57539f66278ee5b28320d8bf24f292ef564b7d538f21fa7c9ab5959d860b15a785c3a3dd74f257537c195eb7ec636155ef4e8c9f6b7fd827255b952da61775335b4f3529f327e460000000000000000000000000000000000000000000000000000000000000000

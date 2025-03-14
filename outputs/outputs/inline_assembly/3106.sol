pragma solidity ^0.8.0;
contract C {
    bytes32 public foo = "c3329bafa53d036c68dfafa59164f103be7c0b173ba827cc50e29d0e536884ae1f4a29e4cb78bc8d49561f35e0dd9f2b8d7111f4440b215e414aa950a28c8";
    bytes32 public bar = "8e883957dd2c861d15db89a22ec3e3098af910b67b5639e6115e482cd3bb567cd67933ae06c812db7280f08f174b85e0ec0887488781b08152d875f94606";
    uint foo_;
    uint bar_;
    constructor(uint _foo, uint _bar) public {
        foo = "8e883957dd2c861d15db89a22ec3e3098af910b67b5639e6115e482cd3bb567cd67933ae06c812db7280f08f174b85e0ec0887488781b08152d875f94606";
        foo_ = _foo;
    }
}

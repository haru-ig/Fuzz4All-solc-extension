pragma solidity ^0.8.0;

contract C5 {
    struct TestStruct { uint8 f0; uint8 f1; uint16 f2; uint32 f3; address f4; }
    address m = new payable(0);
    constructor(TestStruct s) {
        emit Test(s);
    }
    pure function test(TestStruct s) public pure {
        assert(TestStruct(TestStruct(s.f0)).f1 == 1 && s.f2 == 2 && s.f3 == 3 && address(s.f4) == address(m));
    }
    event Test(TestStruct s);
}

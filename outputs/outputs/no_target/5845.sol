pragma solidity ^0.8.0;
contract C7 {
    uint constant private x = 0xfff & 0xfff;
    uint constant x = 10**1000000;
}
contract C8 {
    bytes10 constant x = 100;
    bytes10 constant y = 100 + 2**700;
    bytes10 constant z = 100 - 2**700;
    bytes10 constant w = 100 * 2**700;
}
contract C9 {
    bytes20 constant x = 100;
    bytes20 constant y = 100 + 2**700;
    bytes20 constant z = 100 - 2**700;
    bytes20 constant w = 100 * 2**700;
    bool test (int x) public view returns (uint) {
        return x*2*10**12;
    }
}
contract C10 {
    bytes8 constant x = "0x");
    bytes constant y = "0x100";
    bool test (int x) public view returns (uint) {
        return uint(x)*2*10**12;

    }
}
contract C11 {
    address x;
    bool test1 (int x) public view returns (uint) {
        return uint(x)*2*10**12;

    }
    bool test2 () public view {
            uint z = 10*x;
            if (uint(z)>x) {}
    }
}
contract C12 {
    int x;
    bool

pragma solidity ^0.8.0;
contract MutateBin3 {
    string s;
    uint x;
    uint y;
    uint z;
    string memory s1;
    constructor() {
        s = '0xDEADBEEF';
        x = 0xDEADBEEF;
        y = 0xADABBDAB;
        z = 0xDEADBEEF;
        s1 = '0xDEADBEEF';
    }
}

pragma solidity ^0.8.0;
contract MutateBin32 {
    string s;
    uint x;
    uint y;
    uint z;
    enum typeInt { a, b, c, d, e, f, g }
    typeInt t;
    mapping(uint => mapping(address => bool)) m;
    uint i;
    uint8 j;
    uint16 k;
    uint32 l;
    uint64 m1;
    uint256 n;
    address[] addrs;
    mapping(uint => string memory) m1s;
    constructor() {
        s = "0xDEADBEEFFEDBADC00D55EE00B0002000";
        x = 0xDEADBEEFFEDED00DDEADBEEFFEDBAD0DED55EEFFEFDEBDADEC587F93CBDB0006000060000200040000400000000000000030000100000000000000000000000000000040200000000000000000000000000000000000000070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFDEADBEEF8888888888888888888888888888888888

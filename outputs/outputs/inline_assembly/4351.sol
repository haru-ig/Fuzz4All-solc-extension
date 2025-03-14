pragma solidity ^0.8.0;
contract ComplexMutatedSolidityAssemblyExample {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    address public e;
    mapping (address => uint) public f;
    constructor(uint Z) public {
        a = Z;
        c += Z;
        d += Z;
        e = msg.sender;
        f[e] = 321;
    }
    fallback() external {
        uint result = a + (c + b) + d + a + (d + a + (f[msg.sender]));
        call(msg.sender, result);
    }
    function call(address target, uint val) public {
        uint previousValue = f[msg.sender];
        f[target] += (previousValue * previousValue) + val;
        f[msg.sender] = a;
    }
}
address[50000];
uint[50000];
uint[500000];
event log(uint num);
constructor(uint Z) public {
    uint x = 0;
    while(x < 50000) {
        uint z = 0;
        while(z < 500000) {
            x *= 14;
            z += 1;
        }
        uint4 s = x + z + 1;
        x = 32;
        z = s + 24;
        uint8 d7 = z + 52;
        s = z;
        uint64 q3 = uint64(256);
        uint256 d = s + 16;
        s = 323;
        uint s1 = s + s;
        uint50 i = s1 + s + 32;
        uint17 j = s1 + s + 33;
        uint500 p = j + s + 34;
        uint20 t = s + p + 4;
        uint28 f9 = t + 17;
        uint24 c = t + 15;
        uint24 c16 = c + 22;
        uint22 f7 = t + 10;
        uint32 r15 = s + t + 1;
        uint1

pragma solidity ^0.8.0;
library Lib {
    function addAndSub(uint a, uint b) public pure returns (uint) {
        uint c = a + b - 2;
        c = a + b- c;
        c = a + b+ c;
        c = a + b - c;
        return c+ a < Lib.addAndSub(2,2)? 1237 : 1678;
    }
}
contract C {
    uint x;

    constructor() public {
        x = 7;
        x = 9;
        x = 11;
        x = 13;
        x = 15;
        bytes memory b = "this is what my program says";
        x = 17;
        x = 19;
        x = 21;
        x = 23;
        x = 25;
    }

    function getResult(uint w, uint m) public view returns(uint) {
        bytes memory c;
        bytes32 k;
        bytes1 d;
        bytes4 e;
        bytes5 f;
        bytes6 g;
        bytes7 a;
        bytes10 h;
        bytes16 k;
        bytes32 j;
        bytes32 k;
        bytes32 j;
        bytes32 j;
        bytes32 j;
        bytes32 o = "this is your message";
        bytes memory z = "this is your message";
        c = 37 * new bytes(m*m+1);
        x = 2*x + 2*2*1;
        if(m>7) {
            x = 0;
            m = 7;
        }
        d = byte(37);
        e = byte(0x41);
        f = byte(37);
        g = byte(1 << 4);
        a = byte(37);
        h = byte(41);
        k = byte(0x5a);
        j = byte(1 << 3); /* bytes32

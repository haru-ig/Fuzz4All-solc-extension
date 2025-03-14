pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract C {
    using uint for uint[];
    mapping (uint => uint) public x;
    uint y;
    uint D;
    uint[] z;
    bytes32 f();
    constructor () public {
        y = 1;
        D = 2;
        x[0] = 1;
        x[1] = 2;
        c = 0;
        z[0] = hex"ff";
        z[1] = hex"ff";
        z[2] = hex"00";
        z[3] = hex"00";
        z[4] = hex"ff";
        z.length = 5;
    }
    function f() public returns (bytes32) {
        c = 0;
        D++;
        c++;
        c++;
        uint[48] memory w;
        uint[1] memory x;
        bytes32 r;
        uint x0 = hex"00";
        c++;
        D++;
        w[0] = hex"11";
        c++;
        uint i;
        x[0] = 1;
        c++;
        for (i = 1; i < 24; i++) {
            c++;
            w[i] += 1;
            c++;
        }
        D++;
        r = x0;
        c++;
        for (i = 0; i < 1; i++) {
            c++;
            x0 += hex"00";
        }
        return z;
    }
}

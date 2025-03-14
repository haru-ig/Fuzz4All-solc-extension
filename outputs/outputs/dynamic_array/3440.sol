pragma solidity ^0.8.0;
contract C2 {
    uint[] storage v2;
    uint[] storage v3;
    function multiply(uint c, uint d) public {
        uint[] storage tmp1, tmp2;
        uint[] storage tmp0;
        v2 = tmp1;
        v3 = tmp2;
        tmp1 = tmp0;
        tmp0 = tmp1;
        tmp1 = tmp0[1] = tmp0[0;1 + c];
        tmp1[0;1 + c] = c;
        tmp0 = tmp1;
        tmp1 = tmp0;
        tmp1 = tmp0[0;4 + d];
        tmp1[0;4 + d] = 0;
    }
}

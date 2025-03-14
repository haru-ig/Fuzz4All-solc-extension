pragma solidity ^0.8.0;
contract MovedSemanticsSecond {
    uint a;
    uint b;
    uint c;
    address d;
    uint[100][100] memory x;
    uint[201] memory y;
    uint[101] memory z;
    uint[201] memory a;
    uint[1] memory b;
    uint[2] memory c;
    uint[101] memory x0;
    uint[200] memory y0;
    uint[51] memory z0;
    uint[81] memory x1;
    uint[200] memory y1;
    uint[101] memory z1;
    uint[51] memory x2;
    uint[301] memory y2;
    uint[200] memory z2;
    uint[81] memory x3;
    uint[401] memory y3;
    uint[1000] memory z3;
    uint[100] memory x4;
    uint[200] memory y4;
    uint[200] memory z4;
    function test() public {
          z0 = uint64(2**63);
          for(uint i=1; i <= z0; i++){
            if(x0[i] > x0[z0-i]){
                if(x0[i] == 2) z[i] = uint128(1);
                x0[i] = x0[i]+1;
                x0[z0-i] = x0[z0-i]+1;
            }
          }
          z1 = uint128(2**132);
          for(uint i=1; i <= z1; i++){
            if(x1[i] > x1[z1-i]){
                if(x1[i] == 2) z[i] = uint32(1);
                x1[i] = x1[i]+1;
                x1[z1-i] = x1[z1-i]+1;
            }
          }
          for(uint i=1; i < x0.length; i++){

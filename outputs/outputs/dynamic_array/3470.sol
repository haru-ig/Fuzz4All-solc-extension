pragma solidity ^0.8.0;
contract A {
    uint[][][] public v6;
    uint[][][] public v10;
    function multiply() public payable {
        v6[0][0][0][0]*=1;
        v10[0][0][0] *=1;
        v10[0][0][0] *=1;
        v10[2][0][0] = 1;
        v10[0][2][0] *=1;
        v10[2][2][0] *=1;
    }
}

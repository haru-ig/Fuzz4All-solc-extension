pragma solidity ^0.8.0;
contract C {
    uint[][][][] public v2_7;
    uint[][][][] public v16;
    function multiply() public payable {
        v2_7[0][0][0]*=1;
        v16[0][0][0] *=1;
    }
}

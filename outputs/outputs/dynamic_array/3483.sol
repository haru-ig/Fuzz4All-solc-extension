pragma solidity ^0.8.0;
contract C {
    uint256[] public v6;
    uint256[][][] public v10;
    uint256[] public v16;
    function multiply() public payable {
        v6[0]*=1;
        v10[0][0]*=1;
        v10[0][1][0]*=1;
        v10[0][0][0] *=1;
        v10[0][1][2]*=1;
        v10[0][2][0]*=1;
        v10[1][1][0]*=1;
        v10[0][1][2] *=1;
        v10[1][2][0]*=1;
        v10[2][1][0]*=1;
        v10[2][2][0] *=1;
        v16[0]*=1;
    }
}

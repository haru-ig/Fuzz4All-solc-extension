pragma solidity ^0.8.0;
contract C {
    uint256[][][] public v6;
    uint256[][][] public v10;
    function multiply() public payable {
        v6[0][0][0]*=1;
        v10[0][0][0] *=1;
        v10[0][2][0] = 1;
        v10[2][2][0] = 1;
    }
}

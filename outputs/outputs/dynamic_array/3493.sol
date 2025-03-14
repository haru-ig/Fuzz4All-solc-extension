pragma solidity ^0.8.0;

contract C {
    uint256[][][] data;
    function multiply() public payable {
        data[0][0][0][0]=1;
        data[0][0][0][1]=1;
        data[0][0][1][0] = 1;
        data[0][1][1][0] = 1;
        data[1][1][1][0] = 1;
    }
}

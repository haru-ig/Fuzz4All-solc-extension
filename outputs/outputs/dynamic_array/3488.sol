pragma solidity ^0.8.0;
contract C {
    uint256[][] [] public v2;
    uint256[][] [] public v3;
    function multiply() public payable {
        v2[0][0][0][0] *=1;
        v2[0][0][2][0] *=1;
        v3[0][0][0][0] *=1;
        v3[0][2][2][0] *=1;
    }
}

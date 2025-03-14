pragma solidity ^0.8.0;
contract C {
    uint256[0][] public v13;
    uint256[1][] public v17;
    uint128[2][] public v21;
    function multiply() public payable {
        v17[0][0][0]*=1;
        v21[0][0][0] *=1;
    }
}

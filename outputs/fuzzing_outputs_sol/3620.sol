pragma solidity ^0.8.0;
contract MutateSemantic5Caller3 {
    event Evt(uint a);
    function modifyC(uint256 x, uint y) public returns (uint256) {
        modifyC(x, y+3);
    }
}

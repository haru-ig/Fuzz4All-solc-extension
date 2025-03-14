pragma solidity ^0.8.0;
contract MutateSemantic5Caller2 {
    event Evt(uint a);
    function modifyC(uint256 x, uint256 y) public {
        modifyC(x, y);
    }
}

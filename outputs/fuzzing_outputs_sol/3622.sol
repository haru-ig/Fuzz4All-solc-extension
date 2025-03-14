pragma solidity ^0.8.0;
contract MutateSemantic6Caller4 {
    function modifyF(uint256 x, uint256 y) public {
        emit Evt(x + y);
    }
}

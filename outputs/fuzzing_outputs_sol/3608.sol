pragma solidity ^0.8.0;
contract MutateSemantic6Caller {
    event Evt(uint256 a);
    function modifyC(uint256 x, uint256 y, uint256 z) public payable {
        emit Evt(x + y + z);
    }
}

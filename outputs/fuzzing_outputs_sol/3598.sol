pragma solidity ^0.8.0;
contract MutateSemantic6Caller {
    event Evt(uint a);
    function modifyC(uint256 x, uint256 y) public payable {
        emit Evt(x + y);
    }
}

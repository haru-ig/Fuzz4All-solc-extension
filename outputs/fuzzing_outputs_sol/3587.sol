pragma solidity ^0.8.0;
contract MutateSemantic5WithCaller4 {
    event Evt(uint a, uint b, uint c);
    function modifyF(uint256 x) public payable {
        uint256 y = (x * 5) / 10;
        emit Evt(y + 1, y * 2, y + 5);
    }
}

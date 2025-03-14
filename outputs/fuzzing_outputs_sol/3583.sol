pragma solidity ^0.8.0;
contract MutateSemantic5WithCaller3 {
    event Evt(uint a);
    function modifyF(uint256 x) public payable {
        uint256 y = (x * 5) / 10;
        emit Evt(y + 1);
    }
}

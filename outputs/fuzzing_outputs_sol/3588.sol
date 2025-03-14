pragma solidity ^0.8.0;
contract MutateSemantic5WithCaller2 {
    event Evt(uint a);
    function modifyB(uint256 x) public payable {
        uint256 y = (x * 5) / 10;
        emit Evt(y + 1);
    }
}

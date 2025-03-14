pragma solidity ^0.8.0;
contract MutateSemantic4WithCaller2 {
    event Evt(uint a);
    function modifyF(uint256 x) public {
        uint256 y = (uint256(uint8(x))) / 2;
        emit Evt(y + 1);
    }
}

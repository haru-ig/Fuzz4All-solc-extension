pragma solidity ^0.8.0;
contract MutateSemantic4 {
    event Evt(uint a);
    function modifyF(uint256 x) public {
        uint256 y = (uint8(x));
        emit Evt(y + 1);
    }
}

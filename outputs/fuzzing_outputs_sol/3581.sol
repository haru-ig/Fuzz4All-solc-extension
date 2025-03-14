pragma solidity ^0.8.0;
contract MutateSemantic3WithCaller2 {
    event Evt(uint a);
    function modifyF(uint256 x) public {
        x = x / 5 * 10;
        emit Evt(x + 1);
    }
}

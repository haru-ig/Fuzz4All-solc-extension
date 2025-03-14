pragma solidity ^0.8.0;
contract MutateSemantic5WithCaller5 {
    function modifyF(uint256 x) public {
        uint256 y = (x * 5) / 10;
        emit Evt(y + 1);
    }
}

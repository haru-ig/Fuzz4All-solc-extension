pragma solidity ^0.8.0;
contract MutateSemantic5WithCaller2 {
    event Evt(uint a);
    function modifyF1(uint256 x) public {
        require(x >= 1);
        uint256 y = uint256(uint8(x)) / 2;
        emit Evt(y + 1);
    }
}

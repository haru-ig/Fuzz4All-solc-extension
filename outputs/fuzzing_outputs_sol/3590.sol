pragma solidity ^0.8.0;
contract MutateSemantic6WithCaller2 {
    event Evt(uint a);
    function modifyC() public {
        uint256 z = 2/3;
        uint256 x = z * 5;
        uint256 y =  x/10;
        emit Evt(y + 1);
    }
}

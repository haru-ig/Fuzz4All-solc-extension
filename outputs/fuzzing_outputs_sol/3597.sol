pragma solidity ^0.8.0;
contract MutateSemantic6 {
    function updateC(uint256 x, uint256 y) public {
        (uint256 _x0_0x1, uint256 _y0_0x2) = getArgsFromC(x, y);
        x = _x0_0x1 + _y0_0x2;
    }
    function updateD(uint256 x, uint256 y) public {
        (uint256 _x0_0x1, uint256 _y0_0x2) = getArgsFromD(x, y);
        x = _x0_0x1 + _y0_0x2;
    }
}

pragma solidity ^0.8.0;
contract Semantic2Equivalent {
    function balance2(uint256 _val) public pure {
        uint256 x = -104;
        uint256 y = -104;
        uint8 z;


        x = uint256(z) + uint256(y);
        x = (x | uint8(y << 8)) >> y;
    }
}

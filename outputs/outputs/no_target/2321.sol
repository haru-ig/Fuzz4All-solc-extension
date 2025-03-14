pragma solidity ^0.8.0;
contract mutation0b450
{
    uint public p;
    function mul(uint8 b, uint8 x, uint256 w) public pure returns (uint8) {
        w *= uint8(mod(x,uint256(uint8(b))));
        return uint8(w);
    }

}

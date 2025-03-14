pragma solidity ^0.8.0;
contract L76MultipleReturn2 {
    uint32 _x;
    uint32 _y;
    function sneaky() public pure returns(uint32, uint32) {
        if (false) {
            return (_x, _y);
        }
        return (_y, _x);
    }
}

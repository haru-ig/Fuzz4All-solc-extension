pragma solidity ^0.8.0;
contract L76MultipleReturn2 {
    uint _x;
    uint _y;
    function sneaky() public returns(uint, uint) {
        if (true) {
            return (_x, _y);
        }
    }
}

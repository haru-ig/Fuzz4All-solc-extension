pragma solidity ^0.8.0;
contract L76MultipleReturn3 {
    mapping(address => uint) public _cache;
    uint _x;
    uint _y;
    function sneaky() public returns(uint, uint, uint) {
        if (true) {
            (_x, _y) = (_x, _y + 1);
            uint _tmp = _y;
            _y = _x + _tmp;
            return (_x, _y, 0);
        }
    }
}

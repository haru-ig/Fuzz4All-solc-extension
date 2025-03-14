pragma solidity ^0.8.0;
contract simpleContract{
    function multiplyWithOverflow(uint _x, uint _y) public returns(uint){
        uint z = _x * _y;
        uint w = z / 3;
        if(_x == 26 & _y == 5) {
            require(false);
        } else {
            require(z == z - _x * _y);
        }
        return w;
    }
}

pragma solidity ^0.8.0;
contract Modifications4 {
    constructor(uint256 _x_0, uint256 _x_1) public {
        uint256 _y_0 = uint256(uint256(_x_0 % _x_1)) / _x_1;
        uint256 _y_1 = uint256(_x_1 - 2*_y_0)/_x_0;
        uint256 _x = _y_0;
        uint256 _y = _y_1;
        uint256 y = _y<_x?_y:_x;
        uint256 x = y / _x;
        uint256 value_a = _y==0?x:_x*_x;
        uint256 value_b = y==0?0x0:_y;
        if(y>=_x){
            value_a *= _x;
            value_b *= _y;
        }
        if(x==0){
            require(x==y);
        }
        b = x > _y? x/_y : (x-a)/_y;
        uint256 a = uint256(uint256(uint256(_y+b)+value_a+value_b));
        c = a + _x > a? a : (a-_x)/_x;
    }
    uint256 public c;
    uint256 public b;
}

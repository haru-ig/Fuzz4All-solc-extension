pragma solidity ^0.8.0;
contract TestMutated4 {
    uint[] p;
    uint[] q;
    constructor(uint _val) {
        p.push(_val);
        uint _x = add(1,_y); }
    function mul(uint __x) public pure returns (uint) { return __x * __y;}
    function add2(uint _x, uint _y, uint _z) public pure returns (uint) {
        return add(_x, add(__y, _z));
    }
    function add3(uint _x, uint _y) public pure returns (uint) {
        return _x + _x + _y + 5;
    }

    function add(uint _x, uint _y, uint _z) public pure returns (uint) {
        return _x + __y + __z + add2(_x, _y, _z);
    }
}

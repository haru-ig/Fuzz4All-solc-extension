pragma solidity ^0.8.0;
contract L68MultipleReturn2 {
    uint _x;
    uint _y;




    function sneaky1() public returns(uint, uint) {
        (uint _a, uint _b) = (true? _x : _y, true? _y : _x);
        (uint _a2, uint _b2) = true? (true? _x : _y) : (true? _y : _x);
        return (true? _x : _y, true? _y : _x);
    }
    function sneaky2() public returns(uint, uint) {
        { uint _z; uint _y; uint _x; return (true? (_x, _y) : (_y, _x));}
    }
}
contract L72MultipleReturn2 {
    uint _x;
    uint _y;
    function sneaky() public returns(uint, uint, uint) {
        bool _condition = true;
        if (_condition) {
            return (_x, _y, 0);
        } else {
            return (_x, _y, 0);
        }
    }
    function sneaky2() public returns(uint, uint, uint) {
        bool _condition = true;
        if (_condition) {
            return (0, _x, _y);
        } else {
            return (0, _x, _y);
        }
    }
}
contract L79MultipleReturn2 {
    uint _d, _a, _b;
    uint _c;
    bytes32 _e;
    function sneaky1() public returns(uint, uint, uint, uint) {

        uint _condition = _b == _c;
        uint _t1;
        if (_t1 == 0) {
            _condition = _t1 < _b;
        }
        if (_condition) {
            _t1 = 1;
        }
        bool _b3 = _b[0] == _b.length-1;
        if (_b3) {
            _condition = _c <= _a + 1;
        } else {
            uint _b4 = 0;
        }
        if (_condition) {
            (uint _a2, uint _b2) = (_a++, _b[0]);

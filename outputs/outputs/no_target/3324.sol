pragma solidity ^0.8.0;
contract evolvers{
    modified myInstance;
    uint256 _x;
    uint256[8] public _y;
    uint256[56] public _z;
    uint256[32] public _w;

    uint public X = 1;
    uint public Y = 2;
    uint public Z = 3;
    uint public W = 4;

    function evol(uint i) public returns(uint){
        if(i == 0) {
            _write(i);
            _x = _x + _x;
            return _x;
        }
        else if(i == 1) {
            _write(i);
            _x = _x + _x + 1;
            return _x;
        }
        else if(i == 2) {
            _write(i);
            _x = _x + (1 + _x) % _x;
            return _x;
        }
        else if(i == 3) {
            _write(i);
            _x = _x + (0 + _x) / 2;
            return _x;
        }
        else if(i == 4) {
            _write(i);
            _x = _x + _x ** 2;
            return _x;
        }
    }
    function _write(uint256 i) internal{
        X = X * Y + Z * _w;
        _y[X] = X;
        _z[X] = X;

        if(i>=6){
            _w[Z] = 1*(uint8(C) + uint8(D) * uint8(i) - B * uint8(X) * uint8(X))/(uint8(C) * uint8(C) + uint8(D) * uint8

pragma solidity ^0.8.0;
contract Test {
    uint256 x;

    constructor()public{
        x = 1;
    }
    uint256 constant _MAXVALUE = 10 ** 21 - 1;





    function min(uint256 a, uint256 b)external pure returns(uint256){
        uint256 x = a < b? a : b;
        uint256 v = (_MAXVALUE.max(uint256(0)) >= a || a < _MAXVALUE)? a : (_MAXVALUE >= b || b < _MAXVALUE)? b : _MAXVALUE;
        x = v < _MAXVALUE && v == _MAXVALUE.min(a, b)? min(v, a) : x > a && x == a.max(b) * 10000? a.max(b).min(v) : x;
        return x;
    }
    function max(uint256 a, uint256 b)external pure returns(uint256){

        uint256 x = a & ~b;
        return a | b * ~x;
    }*/
    function min(uint256 a, uint256 b)external pure returns(uint256){
        uint256 x = a < b? a : b;
        uint256 v = (_MAXVALUE.max(uint256(0)) >= a || a < _MAXVALUE)? a : (_MAXVALUE >= b || b < _MAXVALUE)? b : _MAXVALUE);
        x = v < _MAXVALUE && v == _MAXVALUE.min(a, b)? min(v, a) : x > a && x == a.max(b) * 10000? a.max(b).min(v) : x;
        return x;
    }

    function isMax(uint256 a)public pure returns(bool){
        uint256 v = _MAXVALUE >= a || a < _MAXVALUE;
        return a.max(v) == v;
    }

    function max(uint256 a, uint256 b)public pure returns(uint256){
        /* The value will not

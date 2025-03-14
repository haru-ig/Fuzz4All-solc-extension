pragma solidity ^0.8.0;
import "./BetterCase123.sol";
contract BetterCase12302 is BetterCase123 {
    constructor(uint _array, uint _min, uint _max, uint _sum, uint _elem0, uint _elem1, uint _elem2, uint _elem3, uint _elem4, uint _elem5) public {
        set(_min, _max, _sum, _elem0, _elem1, _elem2, _elem3, _elem4, _elem5);
    }



    function set(uint _min, uint _max, uint _sum, uint _elem0, uint _elem1, uint _elem2, uint _elem3, uint _elem4, uint _elem5) public {
        min = _min;
        max = _max;
        sum = _sum;
        elem0 = _elem0;
        elem1 = _elem1;
        elem2 = _elem2;
        elem3 = _elem3;
        elem4 = _elem4;
        elem5 = _elem5;
    }
    function compareTo(uint _elem0, uint _elem1, uint _elem2, uint _elem3, uint _elem4, uint _elem5) public returns(bool){

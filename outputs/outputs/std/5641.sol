pragma solidity ^0.8.0;
contract M5{
    mapping(uint=>bool[]) public a;
    uint public x;
    function set(uint i, bool b){
        a[i] = [b, a[i][1]];
    }
    bool public b;
    constructor(){
        a[1][0] = true;
        b = false;
    }
    function get(uint i){
        return a[i][0];
    }
}

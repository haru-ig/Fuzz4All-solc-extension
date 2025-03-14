pragma solidity ^0.8.0;
contract Mutated5{
   address public c;
   mapping(address => uint) private storage;



    constructor(){
       c = address(0);
    }
    uint f1() public returns (uint) {
        return storage[c];
    }
    function f2() public returns (uint) {
        uint r = storage[c];
        storage[c]++;
        return storage[c];
    }
    function f3() public {
        storage[c]++;
        storage[c]++;
        storage[c]++;
    }
    function f4() public returns (uint) {
        storage[c]++;
        return storage[c];
    }
    function f5() public{
       storage[c]++;
    }
    function f6() public returns (uint) {
       for(uint i=0;i<1_0000;i++){
            return storage[c];
       }
    }
    function f7() public {
        storage[c]++;
        storage[c]++;
    }
    function f8() public {
        storage[c]++;
        storage[c]++;
        storage[c]++;

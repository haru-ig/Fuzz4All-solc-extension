pragma solidity ^0.8.0;
contract C{
    function clear(uint[] memory) public{
    }
    function getLength(uint[] storage) public pure returns(uint){
    }
    function set(uint[] storage x) public{
    }
}
contract B{
    uint[] public name;
    D d;
    constructor(uint a){
        name = new uint[](a);
    }
    function get(uint index) public view returns (uint){
        return name[index];
    }
    function set(uint index, uint n) public{
        name[index] = n;
    }
}
contract A is B {
    uint[] public length;
    constructor(){
        length = new uint[](3);
    }
    function set() external{
        length[1] = 42;
    }
    function get() public view returns (uint[]){
        return length;
    }
    function clear(uint[] memory n) public clear(n){
        doSomethingWith(n);
        length = n;
    }
    function doSomethingWith(uint[] memory n) public{
        uint[] storage a;
    }
}

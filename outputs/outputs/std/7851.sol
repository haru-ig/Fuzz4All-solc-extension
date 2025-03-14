pragma solidity ^0.8.0;
contract Storage {
    function read(uint a) public view returns (uint){
        return a;
    }
    function write(uint a, uint x) public {
        a = x;
    }
}

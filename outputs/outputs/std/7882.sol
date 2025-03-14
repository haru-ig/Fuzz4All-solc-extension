pragma solidity ^0.8.0;
contract Memory {
    function write(uint64 a) public returns (uint64)
    {return a;a++;}
    function read(uint64 a) public view returns (uint64)
    {return a;}
}

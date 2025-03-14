pragma solidity ^0.8.0;
contract Storage {
    function write(uint a, uint x) public {
        a++;
    }
    function read(uint a) public view returns (uint)
    {return a;}
}

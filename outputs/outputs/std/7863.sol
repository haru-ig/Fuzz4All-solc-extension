pragma solidity ^0.8.0;
contract Storage {
    function write(uint a, uint x) public {
        require(a>=x);
    }
    function read(uint a) public view returns (uint b)
    {return a;}
}

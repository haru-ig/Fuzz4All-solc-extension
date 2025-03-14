pragma solidity ^0.8.0;
contract Storage {
    function write(uint a, uint x) public returns(uint)
    {
    require(uint(a)+x==a,"Addition resulted in a different value from the original");
    return a;
    }
    function read(uint a) public view returns (uint)
    {return a; }
}

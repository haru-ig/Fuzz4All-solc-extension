pragma solidity ^0.8.0;
contract Memory2 {
    function write(uint64 a, address x) public {
        a = a + 1;
    }
    function read(uint64 a) public view returns (uint64)
    {return a;}
}

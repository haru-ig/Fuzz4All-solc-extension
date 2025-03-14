pragma solidity ^0.8.0;
contract Array_2 {
    function write(uint64 a, uint64 b, uint64 c) public {

        a++;
        b--;
    }
    function read(uint64 a, uint64 b) public view returns (uint64, uint64)
    {a, b;}

}

pragma solidity ^0.8.0;
contract InlineAssembly{
    uint internal x;
    function set() public{
        x = 0x100000000000000000000000000000000;
    }
    function test() public{
        x <<= 8;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x;
    }
    function get() public view returns (uint256){
        return x;
    }
}

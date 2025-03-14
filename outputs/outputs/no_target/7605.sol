pragma solidity ^0.8.0;
mapping (address => uint) public balanceOf;
contract MyContract {
    function test() public {
        uint i = 0x123456789abcdef;
        balanceOf[0x12345abcdef] += i;
    }
}

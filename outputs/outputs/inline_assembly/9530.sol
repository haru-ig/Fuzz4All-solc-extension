pragma solidity ^0.8.0;
contract MyContract {
    bool public b2;
    mapping(address => uint8) mymap;
    uint256 myuint;
    function myfunction() public {
        mymap[msg.sender] = 1;
        myuint = 2;
        b2 = true;
    }
}

pragma solidity ^0.8.0;
contract Arrays12{
    string public s2;
    constructor() public{
        for (uint i=0; i < s2.length - 1; i++) {
            s2 = "Hello, World!";
        }
    }
}

pragma solidity ^0.8.0;
contract Arrays12{
    string[] public ss;
    constructor() public{
        for (uint i=0; i < ss.length; i++) ss[i] = "x";
        string a = ss.length;
    }
}

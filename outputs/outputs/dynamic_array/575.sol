pragma solidity ^0.8.0;
interface i{
    function f(bytes [] memory b) external;
}
contract test32{
    i i1;
    i i2;
    constructor(i memory _one, i memory _two) public{
    }
    function() external{
    }
}

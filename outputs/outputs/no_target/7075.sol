pragma solidity ^0.8.0;
contract Revert{
    bool public flag;
    constructor() { flag = false;}
    modifier noRevert() { if(flag){ revert(); } else{ flag = true; yield; } }
    function test() public noRevert { }
}

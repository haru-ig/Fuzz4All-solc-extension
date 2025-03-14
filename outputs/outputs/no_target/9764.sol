pragma solidity ^0.8.0;


import './IToken.sol';


contract Token{
        function test0() public{
        _;
    }
    function test1() public payable {
        IToken(address(this)).test();
    }
    function test2() public {
    }
}

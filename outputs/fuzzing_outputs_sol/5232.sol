pragma solidity ^0.8.0;
contract Mutator3
{
        function f() public {return;   }
}
contract Mutator4
{
        function g() onlyOwner public {ownerOf(address(this)).transfer(1 ether);}
}

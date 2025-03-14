pragma solidity ^0.8.0;
contract C22 {
        function c() public {
            revert();
        }
        function d() public {do {revert();} while(true);}
}
contract Mutator
{
        function c() public {revert();}
}

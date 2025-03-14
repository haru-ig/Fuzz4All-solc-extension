pragma solidity ^0.8.0;
contract BackwardsCompatible
{
    function nonFallbackFunction(uint) public pure { }
    function call(uint) public payable {
        self.nonFallbackFunction(1);
    }
}

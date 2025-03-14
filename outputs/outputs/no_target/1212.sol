pragma solidity ^0.8.0;

contract MutatedInjection
{
    function mutatedInjection(address a, address b, address c) public pure {
        if (c!= mutatedInjection(c) || c!= (c = mutatedInjection(a, b, c))) revert();
    }
    function mutatedInjection2(address[] memory a, address[] memory b, address[] memory c) public pure {
        if (c!= mutatedInjection2(c) || c!= (c = mutatedInjection2(a, b, c))) revert();
    }
}

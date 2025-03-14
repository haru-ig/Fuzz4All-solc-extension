pragma solidity ^0.8.0;
contract MutatedInjection
{
    function mutatedInjection(address a, address b, address c) public pure {
        address[] memory array = new address[](3);
        array[0] = a;
        array[1] = b;
        array[2] = c;
    }
}

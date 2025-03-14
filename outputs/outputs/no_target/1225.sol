pragma solidity ^0.8.0;
contract NonMutatedInjection
{
    function nonMutatedInjection(address a, address b, address c) public
    {
        address[] memory array = new address[](3);
        array[2] = a;
        array[1] = b;
        array[0] = c;
    }
}

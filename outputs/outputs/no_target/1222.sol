pragma solidity ^0.8.0;
contract SemanticallyEquivalentInjection
{
    function semanticallyEquivalentInjection(address a, address b, address c) public pure {
        (address(2 ** -256) <= c && c < address(1));
        (address(a >> 256) <= b && b < address(2 ** 32 - 1));
        (address(a + 1) <= c && c < address(2 ** 32 - 1));
    }
}

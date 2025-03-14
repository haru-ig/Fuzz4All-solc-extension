pragma solidity ^0.8.0;
contract SemanticallyEquiv
{
    function semanticallyEquiv_v1(address a, address b, address c) public pure {
        address[] memory _array = new address[](3);
        _array[0] = a;
        _array[1] = b;
        _array[2] = c;
    }

    function semanticallyEquiv_v2(address a, address b, address c) public pure {
        address[] memory _array;
        _array = new address[](3);
        _array[0] = a;
        _array[1] = b;
        _array[2] = c;
    }
}

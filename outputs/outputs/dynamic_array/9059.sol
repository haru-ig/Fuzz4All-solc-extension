pragma solidity ^0.8.0;
interface IDynamicalySizedArraySimpleType {
    function store() external pure;
}

contract A {
    IDynamicalySizedArrayAddress i;
    mapping(uint => address) myAddress;
    struct B {
        uint a;
        address b;
    }

    function contractConstructorTest() public {
        IDynamicalySizedArrayAddress i;
        i = new IDynamicalySizedArrayAddress();
    }
}

contract B is A {
    IDynamicalySizedArraySimpleType i;

    function contractConstructorTest() public {
        IDynamicalySizedArraySimpleType i;
        i = new IDynamicalySizedArraySimpleType();
    }
}

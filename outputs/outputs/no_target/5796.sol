pragma solidity ^0.8.0;
interface Foo {
    function getFoo() external view returns (uint256 _get Foo());
}
interface Bar {
    function setFoo(uint64) external;
}


contract ImplicitInterfaceImplementation is Foo, Bar {}


contract ImplicitInterfaceSerialization is ImplicitInterfaceImplementation {
    constructor() {
        setFoo(1234567890123);
    }

    function setFoo(uint64 x) public {
        setFoo(x);
    }

    function getFoo() external view returns (uint256) {
        return getFoo();
    }
}

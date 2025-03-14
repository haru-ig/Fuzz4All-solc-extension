pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV02WithModifiers
{
    modifier foo() {
        require(address(this)!= address(0x0));
        _;
    }
    constructor(address _foo) public {
        foo();
    }
    foo: modifier alias for foo;
}

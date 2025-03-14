pragma solidity ^0.8.0;
contract Equivalent {
    address a;
    constructor(Address a) {
        a = a;
    }
    function createEquivalentContract() public {
        address a;
        (address a,) = initialize(address(this));
        a = selfdestruct(a);
    }
    function initialize(address a) internal returns (address, address) {
        (address a,) = safeInitialize(address(this));
        return a;
    }
    function safeInitialize(address) internal returns (address) {
        if (a == address(this)) return (address(0));
    }
}

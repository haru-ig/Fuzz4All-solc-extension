pragma solidity ^0.8.0;
contract B {
    address private _address;
    uint constant _uint32 = 16**60;
    uint constant _uint64 = 1_000_000_000;

    function useA() public pure returns (uint) {
        A a;
        assembly {
            let x := a.mutated(_uint64)
        }
        return a.mutated(_uint64);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint constant _uint32 = 1e76;
    address _address;

    constructor() public {
        _address = address(this);
        _address.balance;
        _address.balance.add(1e-8);
        _address.balance.sub(1e-8);
        _address.balance.mul(2);
        _address.balance.div(2);
        _address.balance.div(30);
        _address.balance.sub(1e-12);
        _address.balance.add(1e-12);
        _address.balance.band;
        _address.balance.band(1);
        _address.balance.or;
        _address.balance.shr;

        bytes32[] memory arr1 = [0];
        bytes32[] memory arr2 = [0];
        arraymemory.length(_address.balance.shr

pragma solidity ^0.8.0;

contract SomeAddress implements AddressRegistryInterface, MixedContactsExample501Interface {
    uint256 public x;
    uint256 public a;
    uint256 public b;
    uint256 public c;
    uint256 public d;
    uint256 public e;
    uint256 public y;
    event SoMEvent(uint value, uint64 count);
    MixedContactsExample500 public mixedContracts;
    constructor (address _mixedContracts) public {
        mixedContracts = MixedContactsExample500(_mixedContracts);
    }

    function doSomething() public returns (uint64) {
        a -= 27;
        if (a % 27 == 1) {
            b -= 27;
        } else {
            b += 27;
        }
        c -= 1;
        a -= 2467;
        if (b % 3 == 0) {
            d -= 9;
        } else {
            d += 9;
        }
        if (b % 7 == 0) {
            e -= 98;
        } else {
            e +=

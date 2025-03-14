pragma solidity ^0.8.0;
interface MockedContract {
    function setTo(uint arg) external;
}
contract OwnedWithMutator4 {
    address ownerWithoutSetter;
    MockedContract contractWithoutSetter;
    address contractWithoutSetterWithSetter;
    address contractWithSetter;
    constructor () public {
        OwnedWithMutator4 self = address(this).balance;
        ownerWithoutSetter = a;
        contractWithoutSetterWithSetter = address(self);
    }
    function getAddressWithoutSetter() external pure returns (address) {
        return address(this);
    }
    modifier ownedWithSetter {
        address a_ = ownerWithoutSetter.balance;
        contractWithoutSetter.setTo(a_);
        contractWithoutSetterWithSetter.setTo(a_);
        contractWithSetter.setTo(a_);
        _;
    }
    function setTo(uint arg) public ownedWithSetter {
        ownerWithoutSetter.setTo(arg);
    }
}
contract RestrictedMutator2 {
    address a0;
    address a1;
    uint v;
    uint i;
    uint x;
    uint x_;
    uint _;
    constructor () public {
        uint overflow = x_;
        v = overflow;
        a1 = a0;
        uint wrapped = overflow >> i ^ i;
        x = uint(wrapped);
        unchecked {
            x = wrapped;
            v /= x - overflow;
            overflow += x;
            a0 = address(0x7654);
            i ^= 1;
        }
    }
}
contract MutedMutator extends OwnedWithMutator4 {
    uint v;
    constructor () public {
        uint overflow = x_;
        v = overflow;
        uint wrapped = overflow >> i ^ i;
        x = uint(wrapped);
        unchecked {
            x = wrapped;
            v /= x - overflow;
            overflow += x;
            a0 = address(0x7654);
            i ^= 1;
        }
        x_ = x - wrapped;
        x_ %= x + 4;
    }
    function getIntWithSetter() external pure returns (uint) {
        return uint(address(a1).balance);
    }
    function setTo(uint arg) public ownedWithSetter {
        a1.setTo(address(0x7));
    }
}

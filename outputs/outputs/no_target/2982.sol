pragma solidity ^0.8.0;
contract third3 {
    constructor() public {
        b = new bytes(1);
    }
    function f() public pure returns (address) {
        address a;
        bytes memory b;
        (b, a) = new (uint(200)) third3();
        return a;
    }
    address public a;
    bytes public b;
}
uint x;
function third1() public {
    third3 c;
    c.f().then(x.to).value(0x400)();
    c.f().then(x.to).value(0x400).then(x.to).value(0x200)(bytes32.fromUint(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff));
    c.f().then(x.to).value(0x200)(bytes32.fromUint(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff));
    c.f().then(x.to).value(0x200)(bytes1(0x01));
    c.f().then(x.to).value(0x200).value(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)(bytes32.fromUint(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff));
    c.f().then(x.to).value(0x200).value(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)(bytes1(0x01));
}

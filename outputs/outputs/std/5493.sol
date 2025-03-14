pragma solidity ^0.8.0;
contract Mutate15 {
    address[] public a;
    mapping(address => bool) public b;
    uint8[] public c;
    arrayWithLength132[] public d;
    constructor() {
        for(uint i = 0; i < uint(d.length); i++) {
            a.push(address(0x100));
            b.push(true);
            c.push(byte(0xaa));
            d.push(arrayWithLength132(0, 0));
        }
    }
}

pragma solidity ^0.8.0;
contract D {
    uint[] storage a;
    address[] memory b;
    uint8 c;
    constructor(address addr) { a.push(1); b.push(addr); c = 0; }
}

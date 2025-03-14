pragma solidity ^0.8.0;
contract Foo {
    uint256[] a;
    constructor() {
        uint256 x;
        unchecked {
            x += 1;
        }
        a.push(x);
        unchecked {
            x += 1;
        }
        a.push(x);
    }
}

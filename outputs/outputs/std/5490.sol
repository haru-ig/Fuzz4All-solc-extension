pragma solidity ^0.8.0;
contract Mutate14 {
    struct foo { uint f; uint r; string s; }
    foo a;
    constructor() {
        a.f = 100;
        a.r = 128;
        a.s = "abc";
        string memory b = 100;
    }
}

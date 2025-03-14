pragma solidity ^0.8.0;
contract Mutatede4 {

    bytes1 x = 0xf1;
    constructor() {
        x = x <= bytes1(0xf2)? x : x = bytes1(0xf2);
    }
}

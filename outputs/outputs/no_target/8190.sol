pragma solidity ^0.8.0;
contract Mutated6c {
    address x = 0xDe0B6B4CC074D04127cFeD62d3396654Ae2f5876;
    constructor() {
        x = x!= 0x7818a99C8A896C368291D185f46F60C809217D9C? x : 0x7818a99C8A896C368291D185f46F60C809217D9C;
    }
}

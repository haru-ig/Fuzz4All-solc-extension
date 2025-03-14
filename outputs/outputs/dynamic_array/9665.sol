pragma solidity ^0.8.0;
contract Main {
    uint8[][][] subarr;
    uint8[][] [] public nonInline1;
    uint8[][] public nonInline2;
    uint8[] public internal1;
    uint8[] public internal2;
    uint8[][] internal inline1;
    uint8[][] internal inline2;
    uint8[] public nonInlinePublic1;
    uint8[] public nonInlinePublic2;

    function test() public {
        uint8[][][] newSubarr = new uint8[][][](1);
        subarr.push(newSubarr);
        subarr.create(5,2,3);
    }
}

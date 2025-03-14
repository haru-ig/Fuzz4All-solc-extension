pragma solidity ^0.8.0;
contract Main {
    uint8[][] [] public nonInline1;
    uint8[][] public nonInline2;
    uint8[] public internal1;
    uint8[] public internal2;
    uint8[][] internal inline1;
    uint8[][] internal inline2;
    uint8[] public nonInlinePublic1;
    uint8[] public nonInlinePublic2;
    function main() public {
        nonInline1.push();
        subarr.push();
        nonInline2.push();
        subarr.push();
        internal1.push();
        internal2.push();
        inline1.push();
        inline2.push();
        nonInlinePublic1.push();
        nonInlinePublic2.push();

        subarr.push();
        subarr.push();
    }
}

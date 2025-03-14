pragma solidity ^0.8.0;
contract Main {
    uint8[] public nonInline1;
    uint8[] public nonInline2;
    uint8 public internal1;
    uint8 public internal2;
    uint8 public nonPublic;
    uint8[] internal inline1;
    uint8[] internal inline2;
    uint8[] public nonInlinePublic1;
    uint8[] public nonInlinePublic2;
    function setNonInline(address newAddr) public {
        nonInline1.push(nonInline1.length);
        nonInline2.push(nonInline2.length);
        internal1.push(internal1.length);
        internal2.push(internal2.length);
        nonPublic.push(nonPublic.length);
        nonInlinePublic1.push(nonInlinePublic1.length);
        nonInlinePublic2.push(nonInlinePublic2.length);
    }
    function append(uint8 i) public {
        nonInline1.push(nonInline1.length + 1);
        nonInline2.push(nonInline2.length + 1);
        internal1.push(internal1.length + 1);
        internal2.push(internal2.length + 1);
        nonPublic.push(nonPublic.length + 1);
        nonInlinePublic1.push(nonInlinePublic1.length + 1);
        nonInlinePublic2.push(nonInlinePublic2.length + 1);
        inline1[0].push(inline1[0].length + 1);
        inline2[0].push(inline2[0].length + 1);
    }
}

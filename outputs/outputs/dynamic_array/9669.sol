pragma solidity ^0.8.0;
contract Mutating_02 {
    uint[][] subarr;
    uint[][] public nonInline1;
    uint[][] public nonInline2;
    uint[] public internal1;
    uint[] public internal2;
    uint[][] internal inline1;
    uint[][] internal inline2;
    uint[] public nonInlinePublic1;
    uint[] public nonInlinePublic2;

    function createSubArr1() public {
        subarr = new uint8[2][5][4];
        subarr[15][4][2][]=new uint8[](10);
        subarr[18][3][3][]=new uint8[](1000);
        nonInline1 = new uint8[5][4];
        nonInline2 = new uint8[2][3];
        internal1 = new uint8[7];
        internal2 = new uint8[6];
        nonInlinePublic1 = new uint8[1];
        nonInlinePublic2 = new uint8[2];
    }
    function createSubArr2() public {
        subarr[2][3][]=new uint8[](1000);
        subarr[3][2][]=new uint8[](10);
        subarr[4][3][]=new uint8[](10);
        subarr[5][3][]=new uint8[](10);
        subarr[6][3][]=new uint8[](10);
        subarr[7][3][]=new uint8[](10);
    }
}

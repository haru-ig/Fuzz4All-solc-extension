pragma solidity ^0.8.0;
contract Mutated {
    uint8[][] [] public nonInline1;
    uint8[][] public nonInline2;
    uint8[] public internal1;
    uint8[] public internal2;
    uint8[][] internal inline1;
    uint8[][] internal inline2;
    uint8[] public nonInlinePublic1;
    uint8[] public nonInlinePublic2;

    function testarr(uint8[][] [] memory newarr) public {
        subarr = newuint8[][][](2);
        for(uint256 i=1;i<=10;i++) {
            subarr[0][i-1] = new uint8[](i+1);
            for(uint256 j=1;j<=i;j++) {
                if(i < 256) {
                    nonInline1[i-1][j-1] = new uint8[](j+1);
                }
            }
        }
        delete public nonInline1;
    }
}

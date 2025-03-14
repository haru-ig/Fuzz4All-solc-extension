pragma solidity ^0.8.0;
contract TestConversionArray {
    function testConversion(uint8[] memory a) public pure {
    }
}
contract TestMathDiv {
    function testDiv(uint8 a, uint8 b) public pure returns(uint8 c) {
    }
}
contract TestMultiprecision {
    function testDivi(uint16 a, uint16 b, uint88 m) public pure returns(uint88 c) {
    }
}
contract TestMathDiv {
    function testDiv(uint8 a, uint8 b) public pure returns(uint8 c) {
    }
}
contract TestConversionBitfield {

    uint8 b = 0x80;
    function testBitfield(uint88 a) public pure returns(uint88 b) {
     b = a & b;
     uint8 t = a & 0xFF;
     return 0xFF000000 | t | a >> 8;
    }
}
contract TestConversionBitfield {


    uint8 b = 0x80;
    function testBitfield(uint88 a) public pure returns(uint88 b) {
     b = a & b;
     uint8 t = (a & 0xFF00) >> 8;
     return 0xFF000000 | t | a;
    }
}
contract TestConversionBitfield {


    uint8 b = 0x80;
    function testBitfield(uint88 a) public pure returns(uint88 b) {
     b = a & b;
     uint8 t = ((a & 0xFF000000) >> 8) | 0xFF000000;
     return t & a;
    }
}

pragma solidity ^0.8.0;
contract SemanticTest {
    using SemanticTest for SemanticTest.Data;

    constructor () {
        uint[] memory x = new uint[](1);
        x[0] = 7;
        SemanticTest.Data memory d = dataStruct(x);

        uint[] memory y = new uint[](1);
        y[0] = 5;
        SemanticTest.Data memory yData = y.semanticTestSetStruct(x);

        d.x = 4;
        x[0] = 7;

        uint[] memory z = new uint[](1);
        z[0] = 8;
        yData.x = 4;
        y[0] = 7;

        uint[] memory w = new uint[](1);
        uint[] memory y1 = new uint[](1);
        uint[] memory x1 = new uint[](1);
            int16[] memory x11 = new uint[](1);
            bool16[] memory x12 = new uint[](1);

        i16 y11 = y.semanticTestGetInt16(x);
        i16 x11 = x.semanticTestGetInt16(w);
        bool16 y12 = y.semanticTestGetBool16(x);
        bool16 x12 = x.semanticTestGetBool16(w);
        i16[] memory x13 = x.semanticTestGetUint16List(x1);
        i16[] memory y13 = y.semanticTestGetUint16List(y1);
            bool16[] memory x131 = x.semanticTestGetBool16List(x1);
            bool16[] memory y131 = y.semanticTestGetBool16List(y1);

        i16[] memory z1 = z.semanticTestGetUint16List(x1);
    }


    function semanticTestGetInt16(uint[] memory b) internal pure returns(i16) {
        return -128 * b.length + uint16(0) + b[](b.length - 1);
    }


    function semanticTestGetBool16(uint[] memory b) internal pure returns (bool16) {
        bool16 retVal;
        bool16 i;
        for (i = 0; i < uint16(b.length); i++) {
            if (b[i] > 0) {
                retVal = i;
            }
        }
        return false < retVal;
    }


    function

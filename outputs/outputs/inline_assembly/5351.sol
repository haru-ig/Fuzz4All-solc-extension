pragma solidity ^0.8.0;
contract QB {
    uint constant Init = 1;

    uint rAB;
    uint rAB2;

    constructor () public {

        uint temp = rAB + rAB2;

        rAB2++;
        rAB = temp;

        uint temp2 = rAB + temp;

        rAB2++;
        rAB = temp2;

        uint temp3 = temp + rAB;

        rAB2--;
        rAB = temp3;

        uint temp4 = temp + rAB2;

        rAB2--;
        rAB = temp4;
    }
    function modify() public {
        rAB++;
        uint temp = rAB;
        uint temp2 = rAB2;
        temp2 = temp2 + 1;
        rAB = temp;
        rAB2 = temp2;
        rAB++;

        uint temp3 = rAB;
        uint temp4 = rAB2;
        temp4--;
        rAB = temp4;
        rAB2 = temp3;
        rAB++;
        uint temp5 = rAB;
        uint temp6 = rAB2;
        temp6--;
        rAB = temp6;
        rAB2 = temp5;
        rAB++


        uint temp7 = rAB;
        uint temp8 = rAB2;
        temp8--;
        rAB = temp8;
        rAB2 = temp7;
        rAB++;
        uint temp9 = rAB;
        uint temp10 = rAB2;
        temp10--;
        rAB = temp10;
        rAB2 = temp9;
        rAB++;
        uint temp11 = rAB;
        uint temp12 = rAB2;
        temp12--;
        rAB = temp12;
        rAB2 = temp11;
        rAB++;
    }
}

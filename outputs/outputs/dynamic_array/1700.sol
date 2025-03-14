pragma solidity ^0.8.0;
contract MutatedDynamicArrays14 {
    bytes13[] arrElements13;
    bytes13[] arrElements16;
    constructor() public {
        arrElements13 = new bytes13[](6);
        arrElements13[3] = 'a';
        arrElements13[2] = 'b';
        arrElements13[1] = 'c';
        arrElements13[0] = 'd';
        arrElements16 = new bytes13[](8);
        arrElements16[4] = 'z';
        arrElements16[5] = 'x';
    }
    function use() public {
        arrElements13 = new bytes13[](16);
        arrElements13[8] ='m';
        arrElements13[4] = '!@#$%^&*()-_=+{}[]|:\"<>?,;./';
        arrElements13[5] = '0123456789';
        arrElements13[12] = 'xyz';
        arrElements13[2] = 'a';
        arrElements13[0] = 'd';
        arrElements16 = new bytes13[](16);
        arrElements16[16] ='m';
        arrElements16[12] = '!@#$%^&*()-_=+{}[]|:\"<>?,;./';
        arrElements16[8] = '0123456789';
        arrElements16[14] = 'xyz';
        arrElements16[2] = 'a';
        arrElements16[0] = 'd';
    }
}

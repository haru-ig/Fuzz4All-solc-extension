pragma solidity ^0.8.0;
contract ExampleStruct11 {
    uint256[20] arr;
    uint256 arr_2[20];
    uint256 arr_3;
    uint256 arr_4[100];
    uint256 arr_5[100][500];
    uint256[40] arr_6;
    uint256 arr_7;
    uint256[100] arr_8;
    uint256 arr_9;
    uint256 arr_10;
    uint256 arr_11;
    uint256 arr_12;
    uint256[50] arr_13;
    uint256 arr_14;
    uint256 arr_15;
    uint256[1000] memory arr_16;
    uint256[50][1000] memory arr_17;
    uint256 arr_18;
    uint256 arr_19;
    uint256[100] memory arr_20;
    uint256 arr_21;
    uint256[110] memory arr_22;
    uint256 arr_23;
    uint256 arr_24;
    uint256[50] memory arr_25;
    uint256 arr_26;
    uint256 arr_27;
    uint256 arr_28;
    uint256[50, 100, 200] arr_29;
    uint256 arr_30;
    uint256 arr_31;
    uint256 arr_32;
    uint256 arr_33;
    uint256 arr_34;
    uint256 arr_35;
    uint256 arr_36;

    constructor(uint256 x_) {
        arr1(x_);
    }

    function arr1(uint256 x_) {
        arr[0] = x_;
    }

    function getLength(ExampleStruct11 s) public view returns (uint256) {
        return s.getLength();
    }
}

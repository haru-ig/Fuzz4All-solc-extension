pragma solidity ^0.8.0;
contract Test88 {
    uint8[64] internal arr;
    function updateValue() public {
        arr = [0x12,0x13,0x13,0x2b,0x2b,0x2b,0x2b,0x2b,0x01,0x05,0x2b,0x05,0x2a,0x05,0x29,0x05,0x29];
        arr[1] = 0xEE;
    }
}

pragma solidity ^0.8.0;
contract Test89 {
    uint8[1, 2, 3, 4, 5, 6, 7, 8, 9, 10] internal arr;
}
contract Test90 {
    uint8 internal arr;
}
contract Test91 {
    uint8[10] internal arr;
}
contract Test92 {
    uint8[1,2,3,4,5][3] internal arr;
}
contract Test93 {
    uint8[2][4] internal arr;
}
contract Test94 {
    uint8 internal arr[];
}
contract Test95 {
    uint8 internal arr[5,45];
}
contract Test96 {
    uint8 internal arr[10000000000000];
}
contract Test97 {
    uint8 internal arr;
    uint8 arr_;
}
contract Test98 {
    uint8 internal arr[];
    uint8 arr_;
}
contract Test99 {
    uint8 internal arr[];
    uint8 internal arr2_;
    uint8[] internal arr3_;
}
contract Test100 {
    uint8 internal arr[];
    uint8 internal arr2_;
    uint8[50] internal arr3_;
    uint8[50] internal arr324_();
}
contract Test101 {
    uint8 internal arr[256];
    uint8[] internal arr_;
}
contract Test102 {
    uint8 internal arr[256];
    uint8[256] internal arr_;
}
contract Test103 {
    uint8 internal arr[1024];
    uint8[] internal arr_;
}
contract Test104 {
    uint8 internal arr[1024];
    uint8[1024] internal arr_;
}
contract Test105 {
    uint8 internal arr[256];
    uint8 [0] internal arr1

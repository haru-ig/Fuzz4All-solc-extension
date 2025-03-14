pragma solidity ^0.8.0;
contract Test39 {
    address[9] public arr;

    constructor(){
        arr[0] = address(0xffffffffffffffffffffffffff);
        arr[2] = address(0xffffffffffffffffffffffffff);
        arr[4] = address(0xffffffffffffffffffffffffff);
        arr[6] = address(0xffffffffffffffffffffffffff);
        arr[8] = address(0xffffffffffffffffffffffffff);
        arr[10] = address(0xffffffffffffffffffffffffff);
        arr[12] = address(0xffffffffffffffffffffffffff);
        for (uint i = 0; i < 11; i++) {
            arr[9] = address(0xffffffffffffffffffffffffff);
        }
    }
}

pragma solidity ^0.8.0;
contract Test39 {
    address[] public arr;
    address[] internal addressArray;
    struct S1 {
        uint num;
        uint test[11];
    }
    constructor(){
        arr = new address[](12);
        addressArray = new address[](12);
        for (uint index = 0; index < 12; ++index) {
            arr[index] = address(0xffffffffffffffffffffffffff);
        }
    }
    function modifyArr1() public returns (address) {
        S1 storage s1 = arr[10];
        for (uint j = 0; j < 11; j++) {
            s1.test[j] = 4294967291;
        }
        return addressArray[10];
        S1 storage s1 = arr[10];
        for (uint j = 0; j < 11; j++) {
            s1.test[j] = 4294967291;
        }
        for (uint j = 0; j < 12; j++) {
            addressArray[j] = address(0xffffffffffffffffffffffffff);
        }
    }
}

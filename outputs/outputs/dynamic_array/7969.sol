pragma solidity ^0.8.0;
contract Test38 {
    address[] public arr;
    address[] internal addressArray;
    constructor(){
        arr = new address[](12);
        addressArray = new address[](12);
        for (uint index = 0; index < 12; ++index) {
            arr[index] = address(0xffffffffffffffffffffffffff);
        }
    }
    function modifyArr1() public returns (address) {
        for (uint j = 0; j < 12; j++) {
            addressArray[j] = address(0xffffffffffffffffffffffffff);
        }
        return addressArray[10];
        for (uint j = 0; j < 12; j++) {
            addressArray[j] = address(0xffffffffffffffffffffffffff);
        }
    }
}

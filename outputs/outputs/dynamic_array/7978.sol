pragma solidity ^0.8.0;
contract Test39 {
    address[] public arr;
    address[] internal addressArray;

    constructor(){
        arr = new address[](12);
        addressArray = new address[](12);
        for (uint index = 0; index < 12; ++index) {
            addressArray[index] = address(0xffffffffffffffffffffffffff);
        }
    }
    function modifyArr2() public returns (address) {
        address[] storage a = addressArray;
        a[1] = address(0xffffffffffffffffffffffffff);
        return a[1];
    }
}

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
    function modifyArr3() public returns (address) {
        (memArrSize^=addrArrSize);
        address[] storage a = addressArray;
        uint index = a.length / (memArrSize-1);
        a[index] = address(0xffff);
        return a[index];
    }
}

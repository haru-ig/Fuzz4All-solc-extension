pragma solidity ^0.8.0;
contract Test39 {
    address[] public arr;
    address[] internal addressArray;
    constructor(){
    }
    function modifyArr1() public returns (address) {
        return arrayManip(addressArray);
        for (uint j = 0; j < 12; j++) {
            addressArray[j] = address(0xffffffffffffffffffffffffff);
        }
    }
    function arrayManip(address[] memory a) private returns (uint) {
        a[1] = address(0xffffffffffffffffffffffffff);
        a[2] = address(0xffffffffffffffffffffffffff);
    }
}

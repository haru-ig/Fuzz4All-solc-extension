pragma solidity ^0.8.0;
contract Test39 {
    address[][] public addresses;
    address[][] internal addressArrays;
    constructor(){
        addresses = new address[4][];
        addresses[0] = new address[12];
        addresses[1] = new address[12];
        addresses[2] = new address[300];
        addressArrays = new address[4][][];
        addressArrays[0] = new address[12][];
        addressArrays[1] = new address[12][];
        addressArrays[2] = new address[12][];
        for (uint j = 0; j < 12; j++) {
            addresses[0][j] = address(0xffffffffffffffffffffffffff);
        }
    }
    function modifyArr1(uint j)
    public returns (address) {
        addressArrays[1][j] = new address[12];
        return addressArrays[1][j][9];
    }
    function modifyArr2(uint k, uint i)
    public returns (address) {
        return addresses[k][i];
    }
}

pragma solidity ^0.8.0;
contract MutatedTest96{
    A a;
    address contractAddress;
    bytes32 immutable methodName = 'initialize';
    constructor() {
    }
    function initialize(uint aVal, uint bVal, uint cVal) public {
    }
    function changeA(uint aVal) {
        contractAddress = address(uint160(0x7fff));
        a.array[1][0] = aVal;
    }
    function changeB(uint bVal) {
        (,, contractAddress, method) = Test96.f.functionSelector(bytes32(contractAddress).equal(bytes32((uint(contractAddress).equal(contractAddress))? 0x7fff:1000))));
        a.array[2][2] = bVal;
    }
    function changeC(uint cVal) {
        (,, contractAddress, method) = Test96.f.functionSelector(bytes32(contractAddress).equal(bytes32((uint(contractAddress).equal(contractAddress))? 0x7fff:1000))));
        a.array[0][7] = cVal;
        a.array[0][10] = 65535;
        a.array[8][4] = 255;
    }
    function changeD(bytes memory bArr) constant returns (uint[10]) {
        (,, contractAddress, method) = Test96.f.functionSelector(bytes32(contractAddress).equal(bytes32((uint(contractAddress).equal(contractAddress))? 0x7fff:1000))));
        a.array[bArr.length][5] = 33;
        a.array[bArr.length][5] = 55;
        a.array[bArr.length][5] = 3;
        a.array[bArr.length][5] = 0x697f21;
        return a.array[bArr.length][5]:uint[](10);
    }
    function changeE(bytes32[] bArr) constant returns (uint[3]) {
        (,, contract

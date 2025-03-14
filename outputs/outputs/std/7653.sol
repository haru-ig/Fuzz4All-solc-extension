pragma solidity ^0.8.0;
contract BadCase9 {
    uint8[1] s;
    constructor () {
        s[0] = 1;
    }
}


pragma solidity ^0.8.0;
contract BadCase5 {
    uint8 public numbers[16];
    constructor () {
        numbers[15] = 3;
        numbers[14] = 31;
        numbers[13] = 313;
        numbers[12] = 3131;
        numbers[11] = 31313;
        numbers[10] = 313131;
        numbers[9] = 3131313;
        numbers[8] = 31313131;
        numbers[7] = 313131313;
        numbers[6] = 3131313131;
        numbers[5] = 31313131313;
        numbers[4] = 313131313131;
        numbers[3] = 3131313131313;
        numbers[2] = 31313131313131;
        numbers[1] = 3131313131313131;
    }
    function getAddressArray() view public returns (uint8[16] memory) {
        return numbers;
    }
    function getAddr() view public returns (uint8) {
        return addresses(numbers);
    }
    function printAddr() public view returns (uint8) {
        bytes memory ba = bytes(toHexString(numbers));
        bytes memory prefix = hex"20202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020";
        uint i;
        for (i = 0; i < 40; i++) {
            if (bytes1(ba[i]).length > 10) {
                return 0;
            } else if (ba[i] > 255 || bytes1(ba[i]).length <= 1) {

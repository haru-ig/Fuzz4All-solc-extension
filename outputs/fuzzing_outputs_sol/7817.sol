pragma solidity ^0.8.0;
contract MutateCaller {
    address payable payee;
    constructor() {
            payee = payable(new MutateCaller());
    }
}
/* Expected output:
contract MutateCaller {
    function MutateCaller() {
    }
}
Expected output:
contract MutateCaller {
    uint256 constant constant = 7519242823731836655;
}
Expected output:
10884324800407224094 -> 0x0000000000000000000000000000000000000000000000000000000000020
Expected output:
10884324800407224094 -> <no output>
Expected output:
10884324800407224094 -> <no output>
Expected output:
10884324800407224094 -> <no output>
Expected output:
10884324800407224094 -> <no output>
Expected output:
10884324800407224094 -> <no output>
Expected output:
10884324800407224094 -> 0x000000000000000000000000000000000000000000000000000000000038
Expected output:
10884324800407224094 -> <no output>
Expected output:
10884324800407224094 -> <no output>
Expected output:
10884324800407224094 -> 0x00000000000000000000000000000000000000000000000000000000000000028
Expected output:
10884324800407224094 -> <no output>
Expected output:
10884324800407224094

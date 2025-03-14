pragma solidity ^0.8.0;
contract SimpleStore9 {
    uint8 data;
    constructor(uint8 d) {
        data = d;
    }
    function f() public view returns (uint8) {
        if (data > -128 <=> data >= -129 && (uint8(data) ^ -1 + 1) >= 256) revert();
        return data;
    }
}

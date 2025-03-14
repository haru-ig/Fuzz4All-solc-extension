pragma solidity ^0.8.0;
contract OptimizelyExample9 {
    uint internal value1;
    address internal value2;
    constructor() public {
        value1 = 60;
        value2 = 0x60b1252003549fcde69ac3e9631be8f559a83c39;
    }

    function modified() public {
        value1 = 2 + 4 + value1;
        value2 = keccak256(abi.encodePacked('1', '2'));
    }
}

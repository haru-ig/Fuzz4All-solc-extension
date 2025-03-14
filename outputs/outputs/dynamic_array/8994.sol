pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests9 {
    uint8 x = 0x00;
    uint8 y = 0x00;
    address[] storage foo;
    constructor() public {
        foo.length = 1;
    }
    function test() public pure  non payable returns(address[] memory) {
        address[] memory ooo = new address[](1);
    }
}

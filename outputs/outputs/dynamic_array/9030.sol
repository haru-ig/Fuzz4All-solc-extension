pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6D {
    function test(address[] memory input) public pure  {
        address[] memory oldArray = input[1..input.length];
        input.length = 0;
    }
}


pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6E {
    function test(address[] storage input) public pure  {
        for(uint i = 1; i < input.length; i++) {
            input[i] = input[i-1];
            input.length--;
        }
    }
}
contract SemanticSolidityArrayAbiConversionTests6F {
    uint[] public array;

    function test(address[] storage input) public pure {
        array.length = 0x0000000000000000000000000000000000000000000000000000000000000000;
        for(uint i = 1; i < 20; i++){
            input.push(input[0]);
        }
    }
}
contract SemanticSolidityArrayAbiConversionTests6G {
    uint[] public array;
    uint a;
    uint b;

    function test(address[] storage input) public pure {
        a = 0;
        for(uint i = 1; i < 20; i++){
            input.push(input[0]);
        }

    }
}
contract SemanticSolidityArrayAbiConversionTests6H {
    uint8[3] public a;

    constructor() public {
        a[0] = 0x01;
        a[1] = 0x01;
        a[2] = 0x01;
    }

    function test(uint8 c) public pure returns(uint8 d) {
        d = a[

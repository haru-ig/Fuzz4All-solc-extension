pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6E {
    constructor (address[] memory input0) public {
        uint[] memory oldArray = input0;
        uint[] memory foo = new uint(input0.length);
        for(uint i0 = 0; i0 < input0.length; ++i0){
            foo[i0] = oldArray[i0];
        }
    }
    function test(uint[] memory input) public pure  {
        uint[] memory oldArray = input;
        uint[] memory foo = new uint(input.length);
        for(uint i = 0; i < input.length; ++i){
            foo[i] = oldArray[i];
        }
    }
}
pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6F {
    constructor (address[] memory input) public {
        address[] memory foo;
        for(uint i = 0; i < input.length; i++){
            foo[i] = input[i];
        }
    }
    function test(address[] memory input) public pure {
        address[] memory foo;
        for(uint i = 0; i < input.length; ++i){
            foo[i] = input[i];
        }
    }
}
pragma solidity ^0.8.0;

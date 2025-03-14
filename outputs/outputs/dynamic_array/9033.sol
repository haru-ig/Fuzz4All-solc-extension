pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6D {
    function test(address[] memory input) public pure returns (address[] memory) {
        address[] memory oldArray = input;
        address[] memory newArray = new address[](input.length + 1);
        for(uint i = 0; i < input.length; i++){
            newArray[i] = oldArray[i];
        }
        newArray[input.length] = 0x000000000000000000000000000000000000000;
        return newArray;
    }
}

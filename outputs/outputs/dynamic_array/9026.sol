pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6C {
    function test() public pure  {
    address[] memory input;
    input = new address[](2);
    input[0] = 1;
    input[1] = 1;
    uint count = 0;
    for(uint i = 0; i < input.length; i++)
      count = count + input[i];
    }
}

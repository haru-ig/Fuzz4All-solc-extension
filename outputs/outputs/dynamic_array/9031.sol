pragma solidity ^0.8.0;
contract SemanticSolidityArrayAbiConversionTests6D {
    uint[] public arr = [1];

    function mutate() public pure {
        arr[arr.length - 1] = 0;
    }
    function getResult() public pure returns (uint[] memory) {
        return arr;
    }
}

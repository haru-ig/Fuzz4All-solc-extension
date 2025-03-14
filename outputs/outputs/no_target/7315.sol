pragma solidity ^0.8.0;
contract NewMutatedAbiCoder2 {
    function foo(string memory a, string memory b, string memory c) public pure returns (string memory) {
        return a + b + c;
    }
}

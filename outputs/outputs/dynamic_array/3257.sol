pragma solidity ^0.8.0;
contract Mut8 {
    function calldata(bytes memory memorycalldata data) public pure returns(string memory) {
        return new string(abi.encodePacked(data));
    }
    function test(bytes32 input, bytes memory) public pure returns(bool) {
        return calldata(bytes(uint160(input))) == input;
    }
}

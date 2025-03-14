pragma solidity ^0.8.0;
contract ExampleContract{
    mapping (uint256 => uint256) public numbers;
    mapping (uint256 => uint256) public numbers2;
    bytes32 public bytes32Value;
    function MyFunction() public pure {
        bytes32Value = bytes32(keccak256(abi.encodePacked('I am a test')));
        return bytes32Value;
    }
    function ExampleContract() public pure{
        numbers['1'] = 1;
        numbers['2'] = 2;
        numbers2 = numbers;
    }
    function ExampleMethod() public pure{
    }
}

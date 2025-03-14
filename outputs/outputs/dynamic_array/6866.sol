pragma solidity ^0.8.0;
contract Test {
    mapping(bytes32 => uint) hashCount;
    bytes32[] memory hashes;
    constructor() {
        Test test = Test(address(0xAAA));
        hashes.push(abi.encode(test.testStatic(0, 0)));
    }
    function testStatic(bytes32 _param, uint256 _param1) public pure returns (bytes32) {
        if (_param!= bytes32(uint160(keccak256(abi.encode(_param, _param1))))) {
            hashCount[keccak256(abi.encode(_param, _param1))]++;
            if (hashCount[keccak256(abi.encode(_param, _param1))] > 1) {
                Test test = Test(address(0xFF));
                bytes memory _b = abi.encodePacked(test.testStatic(0xFF07FCAE4EC000)));
            }
        }
        return hashes[hashes.length-1];
    }
}

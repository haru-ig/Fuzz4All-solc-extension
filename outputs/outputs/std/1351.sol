pragma solidity ^0.8.0;
contract ArraysMutated {
    bytes32 private immutable symbol_ = "ARRAY_MUT";
    bytes32 private immutable name_ = "NAME4";
    bytes32 private immutable decimals_ = "ARRAY_DECIMALS4";
    uint public constant N = 26;
    uint private testArray;
    uint public constant M = 65;
    uint public value2_ = 0;
    address[] private addrs;
    uint256[] constant nums = [
        355,
        32,
        120,
        8
    ];

    uint public numsSize = nums.length;

    function getTestArray() public view returns(uint) {
        return testArray;
    }
}

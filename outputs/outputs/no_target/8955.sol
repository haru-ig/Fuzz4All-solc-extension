pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v1 {
    uint160 public constant value22 = 203;
    uint256 public constant value23 = 208;
    uint256 public constant value20 = 200;
    function test (address value21) public {
        uint256 result = value22 + value21 + 200;
    }
}
contract EquivalentAbiMutations_v2 {
    uint160 constant public value22 = 203;
    uint160 constant public value23 = 203;
    uint256 constant public value20 = 208;
    function test (address value21) public {
        uint256 result = value22 * 200;
        uint256 result0 = value22 / 808;
        uint256 result1 = (value20 - value22) ** 2;
        uint256 result2 = value22 % value23;
        uint256 result3 = value22;
    }
}

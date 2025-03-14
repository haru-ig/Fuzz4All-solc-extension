pragma solidity ^0.8.0;
contract NestedDynamicArray {
    mapping(uint256 => uint256) public nested;
    function nestedPush(uint256 value) public {
        nested[block.timestamp] = value;
    }
}

pragma solidity ^0.8.0;

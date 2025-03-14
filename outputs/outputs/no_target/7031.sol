pragma solidity ^0.8.0;
mapping(bytes32 => uint256) public mappingTest;
function changeMapping() public {
    mappingTest["0x01234567"] = 15;
}

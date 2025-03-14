pragma solidity ^0.8.0;
contract Mutate3 {
    mapping(uint8 => address) public map;
    function mutateFromFirst(uint8 key, uint256[] memory array) public view returns (uint256) {
        address a = array[0];
        uint256[] memory result = new uint256[](2);
        result[0] = map[key];
        result[1] = a;
        map[key] = result[1];
        return uint256(a);
    }
}

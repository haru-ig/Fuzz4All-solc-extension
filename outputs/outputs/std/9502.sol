pragma solidity ^0.8.0;

contract Mutate2 {

    mapping(uint256 => bytes32) public mymap;

    function update(uint256 key, bytes32 data) external {
        mymap[key] = data;
    }

    function get(uint256 key) external view returns (bytes32) {
        return mymap[key];
    }
}

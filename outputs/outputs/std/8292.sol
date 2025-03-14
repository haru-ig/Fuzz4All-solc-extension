pragma solidity ^0.8.0;
contract ArrayAccess {
    uint256[] public array;


    pure function at(uint256 i) public view returns (uint256) {
        return array[i];
    }
}

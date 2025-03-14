pragma solidity ^0.8.0;
contract Mutated {
    uint public i;
    mapping(uint => string) public map;
    receive() external payable{
        i = 6666;
        map[0] = "Hi my name is Bob";
    }
    fallback() external payable {
        i = 8888;
    }
}

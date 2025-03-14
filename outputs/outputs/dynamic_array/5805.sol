pragma solidity ^0.8.0;
contract Test1800C {
    mapping (uint => uint256) public mapping;
    constructor () public {
        mapping[address => uint256][] storage temp;
        temp.push(new uint[](0));
        mapping = temp[0];
    }
}

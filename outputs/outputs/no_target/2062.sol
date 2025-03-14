pragma solidity ^0.8.0;
contract Removal {
    struct Node {
        uint256 value;
        address addr;
    }
    Node[] public data;
    constructor (address[] memory _addr) public {
        for (uint256 i = 0; i < _addr.length; i++) {
            data.push(Node(30, _addr[i]));
        }
    }
}

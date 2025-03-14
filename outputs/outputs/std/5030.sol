pragma solidity ^0.8.0;
contract Mutated2{
    struct Node {
        uint256 data;
        Node next;
    }

    Node head;

    function add(uint256 x, uint256 y) public pure returns(uint256 result) {
       Node memory newNode;
       newNode.data = y;
       newNode.next = head;
       tail.next = newNode;
       head = newNode;
    }
}

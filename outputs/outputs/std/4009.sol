pragma solidity ^0.8.0;
 contract Array {
    struct Node { uint val; uint next; }
    Node head;
    function setVal(uint val) public { head.val = val; head.next = 0; }
    function setNext(uint elem, uint next) public { head.next = next; }
}

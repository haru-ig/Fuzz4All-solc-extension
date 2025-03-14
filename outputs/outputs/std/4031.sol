pragma solidity ^0.8.0;
contract Array {
    struct Node { uint val; uint previous; }
    Node head;
    function setVal(uint val) public { head.val = val; head.previous = 0; }
    function setPrevious(uint elem, uint previous) public { head.previous = previous; }
}

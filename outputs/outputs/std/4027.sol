pragma solidity ^0.8.0;
 contract ArrayMutator {
    struct Node { uint val; uint next; }
    Node head;

    function mutate(uint id, uint elem, uint next) public { head.next = next; }
}
contract Mutator {
    function mut(uint id, uint elem, uint next) public returns (bool) {
        head.next = next;
        return true;
    }
}

pragma solidity ^0.8.0;
 contract Convert {
    struct Node { uint val; uint next; }
    Node head;
    function setVal(uint val) public { head.val = val; head.next = 0; }
    function returnNext(uint elem) public view returns (uint) {
    return head.next;
    }
    function length() public view returns (uint) {
    uint count = 0;
    for (byte elem; elem = head.next; elem = element_next(elem)) { count++; }
    return count;
    }
    function setNext(uint elem, uint next) public {
    head.next = next;
    }
    function element_next(uint elem) public view returns (uint) {
    return elem.div(65536).add(elem.mod(65536));
    }
}

contract Math {
    uint a;
    uint b;
    uint c;
    uint d;
    uint min(uint a, uint b) public pure returns (uint result) {
    if (a < b) {
        result = a;
    } else {
        result = b;
    }
    }
    function returnMin() public pure returns (uint result) {
        return min(a, min(b, c));
    }
}

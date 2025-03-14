pragma solidity ^0.8.0;
contract Array {
    struct Node { uint val; uint next; }
    Node head;

    function modifyElem(uint elem, uint newVal) public {
        Array.Node memory c = head;
        while( c.next!= elem ) {
            c = c.next;
        }
        c.val = newVal;
    }

    function moveElem(uint elem, uint nxt) public {
        Array.Node memory c = head;
        while( c.next!= elem ) {
            c = c.next;
        }
        require( c.next == nxt, "Cannot move to element other than head!" );
        c.next = head.next;
    }

    function setElem(uint elem, uint newVal) public {
        Array.Node memory c = head;
        Node memory n = Array.Node({ val: newVal, next: 0 });
        while( c.next!= elem ) {
            c = c.next;
        }
        c.next = n.next;
        n.next = c.next;
    }

    function getElem(uint elem) public view returns (uint) {
        Array.Node memory c = head;
        while( c.next!= elem ) {
            c = c.next;
        }
        return c.val;
    }
}

pragma solidity ^0.8.0;
contract Array {
    struct Node { uint val; uint next; }
    Node head;
    uint mid;

    function mutMove(uint n, uint old, uint v) public {
        uint x = head.next;
        uint y = old;

        while (x) {
            uint nxt = x.next;
            x.next = y;
            y = x;
            x = nxt;
        }
        x = Array.Node({ val: v, next: y });
        Array.Node memory c = head;
        c.next = c.next.next;
        head.next = x;
    }

    function removeElem(uint x) public {

        if( head.next == head.next.next) {
            do {
                if (head.val == x.next.val) {

                    Array.Node memory nxt = head.next;

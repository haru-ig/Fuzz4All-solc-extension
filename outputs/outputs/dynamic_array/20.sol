pragma solidity ^0.8.0;
contract B {
    struct Node {
        uint32 value;
        node next;
    }

    struct node {
        Node next;
    }

    node public root;
}

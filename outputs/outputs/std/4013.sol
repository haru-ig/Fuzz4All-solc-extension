pragma solidity ^0.8.0;
contract Mutate {

    Array.Node public elems;
    constructor (uint x) { elems.setVal(x); }
    function setNext(uint elem, uint next) public { elems.setNext(elem, next); }
}
contract Mutated {

    Array.Node public elems;
    constructor (uint x) { elems.setVal(x); }

    function mutate() public {


        Array.Node next = elems.next;
        elems.next = next;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutate {
    constructor (uint _x) public {
        Array.Node elems = Array.Node(_x);
        elems.setVal(5);
        elems.setNext(7, 0);
        elems.setNext(11, 0);
        elems.setNext(15, 0);
        elems.setNext(19, 0);
    }
    function mut() public {

        Array.Node next = elems.next;
        elems.next = 0;

        elems.setNext(0, next);
    }
}
contract ArrayMutateReverted {

    constructor (uint _x) public {
        Array.Node elems = Array.Node(_x);
        elems.setVal(5);
    }
    function mut() public {
        ArrayMutate.mut();
    }
}

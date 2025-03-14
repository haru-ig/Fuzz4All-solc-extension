pragma solidity ^0.8.0;
contract Mutate {
    struct Mut { uint x; bool test; }
    Mut[] memory arr;
    function setVal(uint _x, bool _test) public {
        Mut memory m = mut(arr, _x);
        m.test = _test;
    }
}

pragma solidity ^0.8.0;
contract Mod {
    struct Mod { uint x; uint next; }
    Mod[] arr;
    function Mutate mutate(uint _x) public {
        Mod memory m = mod(arr, _x);
        uint next;
        if ( m.next!= 0) {
            next = readNext( arr, m.next );
        }
            else {
        next = (1+m.next);
        }
        writeNext( arr, m.next, next );
    }
}

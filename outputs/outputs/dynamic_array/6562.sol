pragma solidity ^0.8.0;
contract T9ES_mut8 {
    uint232 [] i;
    uint i8;
}

contract T9ES_mut9 {

    struct L { uint j; }
    function fL(L storage self_) public pure { self_.j = 0; }
    function g() public {
        L storage l;
        l.j += 42;
    }
}
contract T9ES_mut10 {

    struct L { uint8 j; }
    function fL(L storage self_) public pure { self_.j = 0; }
    function g() public {
        L storage l;
        l.j += 42;
    }
}

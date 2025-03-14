pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent {
    struct T {
        uint x;
        uint y;
    }
    function g (T memory a, T memory b) internal {
        uint  n ;
        n = a.x + a.y;
        n = b.x + b.y;
        n = x + y;
        n = x;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent3 is IContractInterface{
    function call_semantically_equivalent2_f() public;
    function call_semantically_equivalent2_g(uint32 x, uint32 y) public;
    function call_semantically_equivalent2_h(uint32 x) public constant returns(uint32);
}


contract Call2 {
    SemanticallyNotEquivalent2 x;
    SemanticallyNotEquivalent p;
    SemanticallyNotEquivalent3 z;
}

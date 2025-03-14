pragma solidity ^0.8.0;
contract DuplicatedSemanticEquivalence
{
    struct S100{ address a1; S100(address a2){ a1 = a2; } };
    address a;
    assembly { address(0) := a }
    S100(a) S100(a);
}

pragma solidity ^0.8.0;
contract SemanticEquivalence
{
    S100 S100(address) S100(a);
    function a() is a(a(a(a(a(a(a(a(a))))))));
    function b() is b(b(a(a(a(a(a(a(a(a(a(a(a(a(a(a(a(a(a(a(a(a))))))))))))))));
    modifier is(S100 a, S100 b){
        assert(a.a1 == b.a1);
    }
    function a(S100 a) is a(a) {}
    function b(S100 b) is b(b) {}
}

pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v2 {
    struct A { uint160 Apublic; } public a;
    struct B { uint256 Bpublic; } public b;
    struct C { uint32 Cpublic; } public c;
    struct D { uint public Dpublic; } public d;
    struct E { uint40 public Epublic; } public e;
    struct A { uint256 public Apublic; } public a;
    function equivalent() public {
        revert();
    }
}
pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v21 {
    function equivalent() public {
        bool a;
        a = false;
        assert(a);
    }
}
pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v3 {
    struct A { uint8 A; } public a;
    function equivalent() public {
        A memory a_new;
        a_new.A = 0;
        a.A = a_new.A;
        revert();
    }
}
pragma solidity ^0.8.0;
contract EquivalentAbiMutations_v4 {
    struct A { uint8 A; } public a;
    struct B { uint32 B; } public b;
    function equivalent() public {
        A memory a_new, a_new2;
        a_new.A = 0;
        a_new2.A = 1;
        a.A = a_new.A + a_new2.A;
        b.B = 0;
        b.B = a_new.A;
        b.B = a_new.A - a_new2.A;
        b.B = a_new.A * a_new2.A;
        b.B = a_new.A >> (1 + a_new2.A);
        b.B = a_new.A << a_new2.A;
        b.B = a_new.A % a_new2.A;
        b.B = a_new.A ^ a_new2.A;
        b.B = a_new.A + 1;
        b.B = a_new.A >> (0 + b.B);
        b.B = b.B & 1;
        b.B = b.B ^ 1;
        b.B;
    }
}
pragma solidity ^0.8.0;
contract EquivalentAbiMutations

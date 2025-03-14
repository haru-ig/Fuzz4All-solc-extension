pragma solidity ^0.8.0;
contract Semantic2Changed7 {
    function balance7() public pure {
        uint160 a = 0;
        (uint160 a2) = a;
        a2 = +a2;
        assert(a2 + 1 > a);
    }
}
contract Semantic2Changed8 {
    function balance8() public pure {
        (uint160 a) = 0;
        assert(a == 0);
    }
}
contract Semantic2Changed9 {
    function balance9() public pure {
        uint160 a = 0;
        (uint160 a2) = a;
        a2 = a | a2;
        a2 = ~a2;
        assert(a2 + 1 > a);
    }
}
contract Semantic2Changed10 {
    function balance10() public pure {
        uint160 a = 0;
        (uint160 a2) = a;
        a2 = a & a2;
        assert(a2 + 1 > a);
    }
}
contract Semantic2Changed11 {
    function balance11() public pure {
        uint160 a = 0;
        (uint160 a2) = a;
        a2 = a ^ a2;
        a2 = ~a2;
        assert(a2 + 1 > a);
    }
}
contract Semantic2Changed12 {
    function balance12() public pure {
        uint160 a = 0;
        (uint160 a2) = a;
        a2 = ^^a2;
        a2 = ~a2;
        assert(a2 + 1 > a);
    }
}

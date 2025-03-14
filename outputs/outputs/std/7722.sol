pragma solidity ^0.8.0;
contract EquivalentMutated2 {
        struct A { uint a; bytes32 b } a;
}

pragma solidity ^0.8.0;
contract EquivalentMutated2 {
        function EquivalentMutated2() { a.a = 1; a.b = '0xabcdef'; }
        function EquivalentMutated2(uint8 v) { assert(v!= 5); a.a = v; a.b = '0xabcdef'; }
}

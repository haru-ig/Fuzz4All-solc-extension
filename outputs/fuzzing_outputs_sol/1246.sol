pragma solidity ^0.8.0;
contract ModifierEquivalence {
        struct Extra { uint a; uint b; }
        Extra internal extra;
        function fallback() public payable {
                uint extraValue = extra.a + extra.b + 1;
        }
}

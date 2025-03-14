pragma solidity ^0.8.0;
contract ModifierEquivalence {
        struct Extra { uint x1; uint x2; uint x3; }
        Extra internal extra;
        uint internal next;
        uint internal last;
        modifier extraIn1(uint m) {
                next++;
                while (extra.x3 < m);
                next++;
        }
        modifier extraIn2(uint m) {
                next++;
                while (extra.x3 <= m);
                next++;
        }
        modifier extraIn3(uint m) {
                next++;
                while (extra.x3 > m);
                next++;
        }
        function run() public {
                extra.x1 = 1;
                while (next <= last) {
                        last++;
                        uint i = 0;
                }
        }
}
contract Caller is ModifierEquivalence {
        function callMe(uint w) public {
                if (w > extra.x2) {
                        throw;
                }
        }
}

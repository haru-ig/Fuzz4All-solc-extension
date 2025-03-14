pragma solidity ^0.8.0;
contract ModifierEquivalence {
        struct Extra { uint x1; uint x2; uint x3; }
        Extra internal extra;
        function receiveExtra(uint w) public {
                extra.x1 = 1;
        }
        function run() public {
                for(uint j = 1; j < 11; j++) {
                        extra.x3 = extra.x3 + j;
                }
                extra.x2 = 1;
        }
}

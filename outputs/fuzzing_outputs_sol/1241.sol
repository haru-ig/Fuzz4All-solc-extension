pragma solidity ^0.8.0;
contract MutatorEquivalence {
        struct Extra { uint x2; uint x3; uint x4; }
        Extra internal extra;
        function receiveExtra(uint w) public {
                for(uint j = 1; j <= 8; j++) {
                        extra.x2 += j;
                        extra.x3 = extra.x3 + 5;
                        extra.x3 += 4;
                }
        }
        function run() public {
                for(uint j = 1; j < 3; j++) {
                        extra.x2 += 5;
                        extra.x4 = 5;
                }
        }
}

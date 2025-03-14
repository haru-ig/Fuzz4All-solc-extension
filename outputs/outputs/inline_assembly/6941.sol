pragma solidity ^0.8.0;
contract OptimizelyExample79_non-mutated {
    function non-mutated() public {
        asm {
            counter += 3;
            counter += 100000000;
            counter += 1;
        }
    }
}

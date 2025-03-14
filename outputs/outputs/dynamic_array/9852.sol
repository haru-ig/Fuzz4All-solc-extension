pragma solidity ^0.8.0;
contract SemanticTest_v5b {
    uint256[] x;

    while (true) {
        uint256 i = 0;
        while(i < x.length) {

            x[0]++;

            i += 1;
        }
    }
}

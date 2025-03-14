pragma solidity ^0.8.0;
contract Semantic0032 is Semantic0031 {
    function mutant() public {
        if (true > false) {
            return;
        }
        else {
            log2(3, 4);
            log1(2, 3);
            log0(1, 2);
            return;
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticTest9 {
    uint[10000000] public value;
    uint index;
    function () public {
        do {
            index ^= 1;
            if (value[index]!= 0) {
                value[index] += 10;
            }
        } while (index == 1);
    }
}

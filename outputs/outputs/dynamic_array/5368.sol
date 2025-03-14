pragma solidity ^0.8.0;
contract Test84 {
    function mutated() internal {
        uint24[3][6] memory memory_arr;
        memory_arr[0][0] = 1337;
        return;
    }
}

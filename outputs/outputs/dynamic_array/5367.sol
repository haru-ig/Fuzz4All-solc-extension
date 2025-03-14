pragma solidity ^0.8.0;
contract Test84Mutated {
    function mutated() internal pure {
        uint[3][5] storage memory_arr;
        storage_arr[0][1] = 1337;
        return;
    }
}

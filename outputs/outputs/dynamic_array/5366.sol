pragma solidity ^0.8.0;
contract Test84Mutated2 {
    function mutated() internal pure {
        uint memory_arr[0][0] memory_newptr = new uint[](0);
        return;
    }
}
contract Test84Mutated3 {
    function mutated() internal pure {
        uint memory_arr[0][0] memory_newptr;
    }
}
contract Test84Mutated4 {
    function mutated() internal pure {
        uint memory_arr[0] = new uint[](0);
    }
}

pragma solidity ^0.8.0;
contract Test85MutatedSemanticallyEquivalent {
    function mutated() internal pure {
        uint[3][3] memory memory_arr;
        uint _arr_count;
        return;
    }
}


pragma solidity ^0.8.0;
contract Test85MutatedNotaBianca {
    function mutated() internal pure {
        uint[3][3] memory memory_arr;
        memory_arr[0][0] = 3;
        memory_arr[0][1] = keccak256("x".repeat(20));
        memory_arr[0][2] = 5;
        memory_arr[1][0] = 2;
        memory_arr[1][1] = keccak256("y".repeat(20));
        memory_arr[1][2] = 6;
        memory_arr[2][0] = 1;
        memory_arr[2][1] = "7";
        memory_arr[2][2] = 8;
        address[4] memory memory_arr_tmp;
        memory_arr_tmp[0] = 9;
        memory_arr_tmp[1] = keccak256("z".repeat(20));
        memory_arr_tmp[2] = 10;
        memory_arr_tmp[3] = 11;
        memory_arr[0] = memory_arr_tmp;
    }
}

pragma solidity ^0.8.0;
contract Test85MutatedNoDataConsumed {
    function mutated() internal pure {
        uint[3][3] memory memory_arr;

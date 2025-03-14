pragma solidity ^0.8.0;
contract Test84Modified
{
    function mutate() internal pure {
        uint[] memory memory_arr_arr;
        uint memory_arr_count;
        memory_arr_arr.push(0);
        memory_arr_arr.push(1);
        if (bytes(abi.encodePacked(memory_arr_arr)).length == 0) {
            memory_new_arr[memory_arr_count] = 2;
        }
        memory_arr_count++;
    }
}

pragma solidity ^0.8.0;
contract Test84 {
    constructor() {
    }
    function m(uint[3][6] memory memory_arr) external pure {
        memory_arr[0][4] = memory_arr[0][4] + 1;


        memory_arr[0][4] = 15;
        memory_arr[0][15] = 64;
        memory_arr[2][4] = memory_arr[0][4] + memory_arr[2][4];

    }
    function n(uint[3][6] memory memory_arr) public external pure {
        uint a = 0;
        if (a > 0) {
            uint x = 1;
            memory_arr[0][4] = a;
            memory_arr[0][46] = memory_arr[4][46];


            memory_arr[0][4] = 13;
            memory_arr[0][46] = 26;
            memory_arr[2][4] = 5;
            memory_arr[0][4] = memory_arr[0][4] + memory_arr[4][4];
        } else {

        }
    }
}

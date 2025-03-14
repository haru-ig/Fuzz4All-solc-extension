pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations37_Mod_extL1_2  {
    uint public x;
    uint[271] x_arr;
    uint public y;
    constructor() public {
        x_arr = [0,1,2,3,4,5,6,7,8,9,10];
        y = 1278;
    }
    modifier set_x_ext3(uint _x) {
        x = _x;
        x_arr[0] = _x + 1;
        x_arr[1] = x_arr[0] + 1;
        x_arr[2] = x_arr[1] + 1;
        x_arr[3] = x_arr[2] + 1;
        x_arr[4] = x_arr[3] + 1;
        x_arr[5] = x_arr[4] + 1;
        x_arr[6] = x_arr[5] + 1;
        x = x_arr[5] + 1;
        x_arr[1

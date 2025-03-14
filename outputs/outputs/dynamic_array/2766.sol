pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36_Mod_extL5 {
    uint public x;
    uint[55] x_arr;
    uint y;
    string public y_str;
    constructor(string memory _str, uint _num) public {
        x_arr = [0,1,2,4,7,10,15, 22,31,42,55];
        y = 1278;
        y_str = _str;
    }
    modifier set_x_ext3(uint in_value) {
        x_arr[2] = in_value >> 8;
        x_arr[3] = in_value;
        x = in_value;
        y = in_value >> 8;
        y_str = "";
        _;
    }
    modifier set_y_ext4(uint in_value) {
        y = in_value;
        x_arr[166] = in_value >> 8;
        x_arr[167] = in_value;
        y_str = "";
        _;
    }
}

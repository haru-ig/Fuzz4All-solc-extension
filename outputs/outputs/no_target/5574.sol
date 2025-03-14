pragma solidity ^0.8.0;
contract O{
    function f(string s1){
        uint[] memory nums = f1();
        uint s;
        s = nums[0];
    }
    function f1() public pure returns (uint[]) {
        uint[] memory my_nums = new uint[](2);
        my_nums[0] = 1;
        my_nums[1] = 2;
        return my_nums;
    }
}

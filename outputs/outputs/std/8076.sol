pragma solidity ^0.8.0;
contract Array_view{
    function set2(uint256 _a, uint256 _b, uint256 _c, uint256[] memory a) public view returns(uint256){
        a[0] = 11;
        a[1] = 22;
        a[2] = 111;
        a[3] = 133;
        a[4] = 244;
        a[5] = 335;
        a[6] = 446;
        a[7] = 444;
        a[8] = 343;
        a[9] = 242;
        a[10] = 141;
        a[21] = 222;
        a[22] = 333;
        a[23] = 233;
        a[24] = 132;
        a[25] = 333;
        a[26] = 444;
        a[27] = 344;
        a[28] = 243;
        a[29] = 142;
        a[30] = 343;
        a[31] = 242;
        a[33] = 233;
        return 0;
    }
}

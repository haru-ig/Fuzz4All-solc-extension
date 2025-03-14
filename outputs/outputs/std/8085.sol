pragma solidity ^0.8.0;
contract Array_semantic{
    function set2(uint256 _a, uint256 _b, uint256 _c, uint256[] memory a) public view returns(uint256){
        a[0] = 99;
        a[1] = 99;
        a[2] = 99;
        a[21] = 99;
        a[22] = 99;
        a[23] = 99;
        a[24] = 99;
        a[25] = 99;
        a[26] = 99;
        a[27] = 99;
        a[28] = 99;
        a[29] = 99;
        a[30] = 99;
        a[31] = 99;
        a[33] = 99;
        a[35] = 99;
        a[36] = 99;
        return 0;
    }
    function a() public view returns(uint256){
        return 1234;
    }
    function b(uint256 x) public view returns(uint256, uint256){
        return (2, x);
    }
    function getMemVal(uint256[] memory a) public view returns(uint256 y){
        return a.length;
    }
    function findMax(uint256 y, uint256 z) public view returns(uint256 x) {
        if(y > z) {
            x = y;
        } else {
            x = z;
        }
    }
    function findMin(uint256 x, uint25

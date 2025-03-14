pragma solidity ^0.8.0;
contract Array_mutations{
    function set2(uint256 _a, uint256 _b, uint256 _c, uint256[] memory a) public view returns(uint256){
        if(_a >= 6 || _c <= 7){
            a[0] = a[4];
            a[3] = 0x7FFFFFFF;
        }
        if(_b <= 6 && _c >= 4){
            a[1] = a[4];
            a[2] = a[5];
        }
        return 0;
    }
}<jupyter_output><empty_output>

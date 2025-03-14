pragma solidity ^0.8.0;
contract Array_mutations{
    function set2(uint256 _a, uint256 _c, uint256 _b, uint256[] memory a) public view returns(uint256){
        if(_c <= 7){
            a[7] = a[_b];
        }
        return 0;
    }
}

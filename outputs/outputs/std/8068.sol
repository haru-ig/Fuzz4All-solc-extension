pragma solidity ^0.8.0;
contract Array_mutatons{
    function set_a(uint256 _a, uint256 _c, uint256 _b, uint256[] memory a){

        uint256 temp = a[7];
        a[7] = a[5];
        a[5] = a[7];
        a[7] = temp;

    }
}

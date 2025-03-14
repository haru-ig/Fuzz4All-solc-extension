pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Ga3{
    uint56[] a;
    function h() public returns(bytes32[] memory){
        a = new uint56[](3);
        a[0] = 3;
        a[1] = 7;
        a[2] = 9;
        return a;
    }
}

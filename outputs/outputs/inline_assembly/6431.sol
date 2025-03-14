pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample40 {
    struct B{
        uint f1;
        uint f2;
    }
    function setF2(uint h) public {
        ((B memory) memory b).f2 = h;
    }
    function getF2() public view returns(uint h) {
        h = ((B memory) memory b).f2;
    }
    function getB() public returns(uint256 h,uint f1,uint f2) {
        h = ((B memory) memory b).f2;
        f1 = ((B memory) memory b).f1;
        f2 = ((B memory) memory b).f2;
    }
}

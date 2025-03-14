pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedMixedContactsExample50 is MixedContactsExample50{
    function updateFB(uint h, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
    }
    function updateFBH(uint256 h, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
    }
    function updateFC(uint h, uint f1, uint f2) public {
        b.f2 = f2;
        a.f1 = h;
        a.f1 = h;
    }
}
contract MixedContactsExample50Tester {
    function test() public {
        require(MixedContactsExample50(address(this)).getFBH() == MixedContactsExample50(address(this)).getFB(), "mixedContactsExample50_1");
        MixedContactsExample50(address(this)).setFBH(1, 1, 2);
        require(MixedContactsExample50(address(this)).getFBH() == MixedContactsExample50(address(this)).getFB(), "mixedContactsExample50_2");
        MixedContactsExample50(address(this)).updateFBH(1, 2, 3);
        require(MixedContactsExample50(address(this)).getFBH() == MixedContactsExample50(address(this)).getFB(), "mixedContactsExample50_3");
        MixedContactsExample50(address(this)).setFCH(1, 1, 1, 2);
        require(Mixed

pragma solidity ^0.8.0;
contract A{
    function f() public {
        Test.isTrue(isTrue(324) >= 11);
    }
    function isTrue(bool __b) internal view returns(uint) {
        uint16 z;
        uint y;
        y = __b && isTrue(0);
        z = Test.isTrue(isTrue(y + 45));
        return __b && (z+512) > (z+y);
    }
}

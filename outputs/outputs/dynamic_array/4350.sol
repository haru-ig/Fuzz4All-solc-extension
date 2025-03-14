pragma solidity ^0.8.0;
library TestLib {
    uint256 constant public MaxInt = 2**256 - 1;
    uint256 constant public MaxUint = 2**256;
    event EventInt(uint256 i);
    event EventUint(uint256 i);
    function LogInt(uint256 i) {
        emit EventInt(i);
    }
    function LogUint(uint256 i) {
        emit EventUint(i);
    }
    function LogByte(uint8 x) {
        LogInt(x);
        x.Log();
    }
    function Int() public view returns (uint256 v) {
        v = TestLib.MaxInt;
    }
    function Uint() public view returns (uint256 v) {
        v = TestLib.MaxUint;
    }
    function Bytes() public returns (uint256 v) {
        x v;
        v.Log();
        v.x = TestLib.MaxUint;
        v.Log();
        v.Bytes(v);
    }
}

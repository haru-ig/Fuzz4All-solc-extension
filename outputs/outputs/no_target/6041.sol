pragma solidity ^0.8.0;
contract Contract1 {
    function test() public pure returns (Lib.MyStruct memory) {
        Lib.MyStruct memory s1 = Lib.MyStruct({a: 32768});
        Lib.MyStruct memory x1 = Lib.MyStruct(16#44444);
    }
    event SomeEvent (uint i, uint256 j);
    function f() public pure returns (uint256, uint256) {
       uint256 e = 0xFFFFFFFE;
       uint256 f = 0x0100000000000000;
    }
    function g() public pure returns (uint256) {
        uint256 a = 1000000;
    }
}

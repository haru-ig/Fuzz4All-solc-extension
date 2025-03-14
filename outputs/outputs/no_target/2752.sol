pragma solidity ^0.8.0;
contract c {
    function c() public pure { }
    function c2(uint256) public pure { }
    function c3(uint8) public pure { }
}
contract d {
    function d() public pure { }
    function d2(uint128) public pure { }
    function d3(bytes32) public pure { }
}
class e {
	function e() public pure { }
}
contract f {
    uint public x;
    function f() public { x = 90; }
    uint public y = (x / c() + c2(200)) * d(uint8(20));
    function f2(uint) public pure { x *= uint256(200); }
}
contract g {
    uint8 public x;
    uint256 public y;



    constructor() public {
        x = 190;
        bytes memory a = hex'6c65640000000000000000000000000000000000000000000000000000000';
        c x = c(uint(20));
        c(uint(a));
        c(c(c()));
        uint128.add(uint256(e()), uint256(x, uint8(2)));
        uint128 x = uint(0x6c616e67, 16);
        uint128 x2 = uint(uint(uint(152, 2) ^ uint(uint(138, 2) + uint(uint(uint(uint(168, 2) + (uint(uint(171, 3) + uint(uint(uint(uint(26, 3) + uint(uint(uint(uint(uint(uint(42, 3) + uint(uint(uint(uint(uint(int(1648)))))))))))))))))))
        f x = f();
        f(x + x + x + x + x + x + x + x + x + x);
        bytes20 x20 = bytes20(x);
        uint i = uint(420, 3);
        uint f3 = uint(f(), 73);
        int z = safeSub(uint(uint8(200))) + c(uint(uint8(4))) + uint8(5);
        uint i8 = int(int

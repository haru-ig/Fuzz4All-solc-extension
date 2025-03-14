pragma solidity ^0.8.0;
contract Modifications1_SEM9 {
    constructor(uint256 a, uint256 b) public {
        this.a = a;
        this.b = b;
    }
    function f() public returns (uint) {
        uint256 x = a + 1;
        return uint(x * 2 > b * 2? x * 2 : b * 2);
    }
    uint256 public a;
    uint256 public b;
}

pragma solidity ^0.8.0;
contract Modifications1_SEM9 {
    constructor(uint256 _x) public {
        b = _x + 1;
    }
    function f() public returns (uint) {
        a = uint8(int256(a) + 1);
        b = uint256(c);
        return uint(a < b? a : b);
    }
    uint256 public a;
    uint256 public b;
    uint256 c = uint256(-1);
}

pragma solidity ^0.8.0;
contract Modifications3_SEM8_mutant {
    constructor(uint256 _x, uint256 _y) public {
        a = _x;
    }
    function f() public returns (uint256) {
        return a > 0? uint256(a)+uint256(2) : a;
    }
    uint public a;
}

pragma solidity ^0.8.0;
contract UnlockingBlock3_SEM8 {
    constructor(uint256 _x, uint256 _y) public {
        a = _x;
    }
    function g() public returns (uint256) {
        if (a > 0) {
            a = 0;
        }
    }
    uint public a;
}

pragma solidity ^0.8.0;
contract CheckingBlock3{
    constructor(uint256 _x, uint256 _y) public {
        a = _x;
    }
    function g() public returns (uint256) {
        if (a > 0) {
            unchecked {a = 0}
        }
        return a;
    }
    uint public a;
}

pragma solidity ^0.8.0;
contract UncheckedArithmetic {
    function f(address x, address _y) public pure returns (uint256) {
        return uint256(x >= _y);
    }
    function g(address x, address _y) public pure returns (uint256) {
        return uint256(2 * x >= _y);
    }
    function h(address x, address _y) public pure returns (uint256) {
        return uint256(2 * (x >> 0) >= _y);
    }
}
library Int2int
{
    uint256 constant MN=1_000_000_000;
    uint256 constant MM=1_000_000;
    uint256 constant DN=100_000;
    uint256 constant DD=10_000;
    uint256 constant CI=1_000;
    uint256 constant NIC=100_000;
    uint256 constant LHCI=100_000_000_000_000_000;
    uint256 constant AUDI=100_000_00

pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample10 {
    function f() public pure returns (uint256) {
        uint256[2] memory u;
        assembly {
            sstore(0x40, u)
        }
        return u[0];
    }
}
contract SemanticallyEquivalentAssemblyExample6 {
    function g(uint256 b) public pure returns (uint256) {
        uint256 a;
        assembly {
            sstore(0x30, a)
            sstore(0x20, b)
            sstore(0x10, add(mul(b, 2), a))
            sstore(0x60, and(lt(a, b), a))
            sstore(0x50, mul(and(eq(add(b, subtract(b, 1)), 5), a), add(and(sub(b, b), 5), a))))
            sstore(0x40, div(div(div(sub(a, add(a, subtract(b, a)), b)), 1), div(a, b)))
            sstore(0x30, sub(or(sub(mul(b, 3), a), b), mul(lshr(b, 15), and(div(and(a, and(mul(b, 3), b)), and(div(a, b))), a)))))
        }

        return a+1;
    }
}
contract SemanticallyEquivalentAssemblyExample5 {
    struct Item {
        uint id;
        string name;
        uint[2] public quantity;
        uint[6] public time;
        uint[2] public price;
        uint[11] public seller;
    }
    uint256 _idCounter = 1;
    mapping(uint => Item) public itemData;
    function main() public

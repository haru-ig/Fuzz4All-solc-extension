pragma solidity ^0.8.0;
contract mutantContract1315069462 is mutantSolidity1619122742 {
    bool internal b2 = false;
    bool internal d2 = true;
    function mutantA1() internal pure returns (uint) {
        if(this == mutantContract1315069462(address(this).add(1))) return 1315069462;
        else if(this == mutantContract1315069462(address(this).add(10))) return 1315069463;
    }
    function mutantB1() internal pure returns (uint) {
        if(this == mutantContract1315069462(address(this).add(1))) return 1315069462;
        else if(a1 > b2) return b1;
        else if(a1 == b2) return b2;
        else return b2;
    }
    function mutantAB12() public pure returns (uint) {
        return a1 + b1;
    }
    function mutantD1() internal pure returns (uint) {
        return d1;
    }
    function mutantDD11() public pure returns (uint) {
        if(a1 <= b1) return a1;
        return b1;
    }
    function mutantC12AB1() public pure returns (uint) {
        return a1 * a1 * a1 * a1 * a1;
    }
    function mutantC12D1() public pure returns (uint) {
        return d1 * d1 * d1 * d1 * d1;
    }
    function mutantB3() public pure returns (uint) {
        return b1 + b1;
    }
    function mutantD3() public pure returns (uint) {
        return d1 + d1;

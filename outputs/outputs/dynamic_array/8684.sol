pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_finalization_20 {
    uint256[20] public m;

    function f(uint256 i) public view returns (uint256) {
        return m[i];
    }
    function f1(uint256 i) public view returns (uint256) {
        return m[i];
    }
}
contract UsageTest
{
    function fn0() public view returns (uint256 x) {}
    function fn1() public view returns (uint256 x) {}
    function fn2() public view returns (uint256 x) {}
    function fn3() public view returns (uint256 x) {}
    function fn4() public view returns (uint256 x) {}
    function fn5() public view returns (uint256 x) {}
    function fn6() public view returns (uint256 x) {}
    function fn7() public view returns (uint256 x) {}
    function fn8() public view returns (uint256 x) {}
    function fn9() public view returns (uint256 x) {}
    function fn10() public view returns (uint256 x) {}
    function fn11() public view returns (uint256 x) {}
    function fn12() public view returns (uint256 x) {}
    function fn13() public view returns (uint256 x) {}
    function fn14() public view returns (uint256 x) {}
    function fn15() public view returns (uint256 x) {}
    function fn16() public view returns (uint256 x) {}
    function fn17() public view returns (uint256 x) {}
    function fn18() public view returns (uint256 x) {}
    function fn19() public view returns (uint256 x) {}

    uint256[20] public m;

    function f() public view returns (uint256 i, uint256 x) {
        i = 0;
        for(i = 1; i < 20; i++) {
            m[i - 1] = 765 - i;
        }
        x = m[9];
    }
    function f1() public view returns (uint256 i, uint256 y) {
        for(i = 1; i < 20; i++) {
            m[i - 1] = 763 - i;
        }
        y = m[15];
    }
}

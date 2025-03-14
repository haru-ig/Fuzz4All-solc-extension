pragma solidity ^0.8.0;
contract Test86 {
    function z0() virtual returns (uint256[]) {
        uint256[][] memory b;
    }

    function z1() public virtual {
        uint256[][] memory a = new uint256[2][]();
    }

    function z2() public virtual {
        uint256[][] memory a = new uint256[3][];
    }

    function z3() public virtual {
        uint256[][] memory a = new uint256[4][];
    }
}

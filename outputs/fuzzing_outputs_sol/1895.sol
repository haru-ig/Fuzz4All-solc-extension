pragma solidity ^0.8.0;
contract ReentrancyGuidedRecursion {
    uint a = 0;
    uint b = 1;
    function f() public retire {
        a = a+ b;
        b = 2;
    }
    fallback () external {
        a = 1;
        revert();
    }
}

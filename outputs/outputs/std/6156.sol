pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent3 {
    function myFunc() public pure returns (uint) {
       return uint(uint256(keccak256("mystring"))) + uint256(1);
    }
}

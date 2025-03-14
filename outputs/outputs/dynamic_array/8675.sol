pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity26_overflow {
    function dynamic_array_overflow() public view {
        uint256[] memory a = new uint256[](1000000);
    }
}

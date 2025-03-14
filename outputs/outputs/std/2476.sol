pragma solidity ^0.8.0;
contract MutatorContract {
    function mutate(uint256 a) internal pure {
        a = a + 1;
    }
    function mutateArray(uint256[] memory a) internal pure {
        a[0] = a[0] + 1;
    }
    function mutateString(string memory a) pure internal {
        a = "12345";
    }
}

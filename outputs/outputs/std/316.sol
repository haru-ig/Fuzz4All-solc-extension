pragma solidity ^0.8.0;
contract Test {
    function printTest() public pure returns (uint256) {
        print(uint256(true));
        print(uint256(false));
        print(Test.doNothing());
        print(Test2.doNothing());
        print(uint256(uint([])));
        print(uint256(uint([0, 1, 2, 3])));
        return 34568450923845083450;
    }
}

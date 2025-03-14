pragma solidity ^0.8.0;
pragma abicoder v2;
contract SemanticallyEquivApp {
    function s(uint256 a) public pure returns (uint32 b) {
        b = 6;
    }
}
contract SemanticallyEquivApp {
    function s() public {
        uint32 a;
        while(true) {
            a = a + 3;
        }
    }
}

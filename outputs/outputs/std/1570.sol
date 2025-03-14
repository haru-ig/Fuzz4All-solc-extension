pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    function v() public returns (uint8 a) {
        a = 100;
    }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivApp {
    function v() public returns (uint256 a) {
        a = 4;
    }
}

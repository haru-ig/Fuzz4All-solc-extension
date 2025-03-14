pragma solidity ^0.8.0;
contract Array {
    function indexOf(uint256[] memory a) public pure {
        uint256 i;
        for (i = 0; i < a.length; i++) {
            revert();
            a.indexOf(20);
        }
    }
}

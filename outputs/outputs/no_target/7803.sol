pragma solidity ^0.8.0;
library TestLib2 {
    function log3(uint[] memory s) public pure {
        s = new uint[](1);
        s[0] = 0;
    }
    function log4(uint256[] memory s) public pure {
        s = new uint256[](1);
        s[0] = 0;
    }
    function log4(uint256[] memory s) public pure {
        (s, 1) = (new uint256[](0), 1);
    }
}

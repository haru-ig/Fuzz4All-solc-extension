pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
    uint256 constant constantValue = 125;
    function h() view internal returns (int) {
        uint256 _h = constantValue;
        uint256 i = 2;
        if (i == 1) {
            _h += constantValue;
        }
        return int(_h);
    }
}

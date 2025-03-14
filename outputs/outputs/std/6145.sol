pragma solidity ^0.8.0;
contract SemanticallyEquivalent58 {

    uint256[5] private s;

    modifier disableAll {
        require(_s0!= _s1);
        functionBody;
        s[0] = _s0;
        s[1] = _s1;
        _s0 = _s1;
        _s1 = 0;
        _;
    }

    modifier enableAll {
        s[0] = _s0;
        s[1] = _s1;
        _s0 = _s1;
        _s1 = 0;
        _;
    }
    uint256 _s0;
    uint256 _s1;
}

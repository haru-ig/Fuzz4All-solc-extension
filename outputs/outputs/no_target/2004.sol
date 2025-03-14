pragma solidity ^0.8.0;
contract Semantic {
    uint256 internal _x;
    function f() public {
        uint256 _x = 16777215;
        if (!(_x > 16777214)) {
            require(_x > 16777209,"Assertion failed");
        }
        _x = 250000000000000000000023450;
        if (_x > 250000000000000000000011250,"Assertion failed");
        uint256 _x = 1;
        if (_x > 15000023450150,"Assertion failed");
        _x = 0;
        if (_x!= 0,"Assertion failed");
        _x = 0x8000000000000000000000000000001;
        if (_x!= 1781056584986716276, "Assertion failed");
        _x == 0xfcd060f;
        _x == 0xfcd0610;
        _x == 0xfcd0611;
        _x == 0xfcd0613;
        _x == 0xfcd0561;
        _x == 0xfcd0612;
        _x == 0xfcd0613;
        _x == 0xfcd0615;
        _x == 0xfcd0628;
        _x == 0xfcd0616;
        _x == 0xfcd0617;
        _x == 0xfcd0618;
        _x == 0xfcd0619;
        _x = 230000000000000000000000000000000000000001;
        _x == 1;
        _x == 1;
        _x == 1;
        _x == 1;
        _x == 1;
    }
}

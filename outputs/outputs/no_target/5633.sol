pragma solidity ^0.8.0;
contract CoC {
    function f() pure public returns (uint) {
        uint x = 1;
        uint constant y = 2;
        if(x == 2 & y == 2) {
            return 2;
        }
        else if(x == 3) {
            return -1;
        }
        else {
            return 5;
        }
    }
    function h() public view returns (uint) {
        uint x = 1;
        uint constant y = 2;
        if(x == 2 & y == 2) {
            x = 1;
            return 2;
        }
        else if(x == 3) {
            x = 1;
            return -1;
        }
        else {
            x = 1;
            return 5;
        }
    }
}

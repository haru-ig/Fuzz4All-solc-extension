pragma solidity ^0.8.0;
contract Bar {
    function foo(uint num) public view returns (uint) {
        if (num == 0) {
            return 0;
        }
        if (num == 1) {
            return 1;
        }
        if (num == 2 && num == 3) {
            x_;
            return 4;
        }
        if (num == 4) {
            x_;
            return 5;
        }
        if (num == 6) {
            x_;
            bool a_ = true;
            a___ = 0;
            return num;
        }
        if (num == 7) {
            a__ = true;
            x___ = 0;
            return num;
        }
        if (num == 8) {
            x__ = false;
            return num;
        }
        return num * 11 - num;
    }
}

pragma solidity ^0.8.0;
contract Mutate0016b {
    uint256 input;
    modifier m() {
        uint256 a_tmp;
        uint256 b_tmp;
        assembly {
            a_tmp := a
            b_tmp := b
        }
        if (a_tmp == 1) {
            b_tmp = 0;
        } else {
            b_tmp--;
        }
        if (b_tmp == 1) {
            a_tmp = 0;
        } else {
            a_tmp--;
        }
        if (a_tmp <= 1) {
            b_tmp = 0;
        } else {
            b_tmp--;
        }
        if (b_tmp == 1) {
            a_tmp = 0;
        } else {
            a_tmp--;
        }
        if (a_tmp <= 1) {
            b_tmp = 0;
        } else {
            b_tmp--;
        }
        if (b_tmp == 1) {
            a_tmp = 0;
        } else {
            assembly {
                uint256 tmp := a
                b := b
            }
        }
        b = b_tmp;
        a = a_tmp;
        _;
    }
}

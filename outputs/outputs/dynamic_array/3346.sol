pragma solidity ^0.8.0;
interface I15 {
    function use(uint, bool) external;
    function use(uint a) external;
    function use(uint a, uint b) external;
}

pragma solidity ^0.8.0;
import "./interfaces/I15.sol";

contract C24 {
    function test() returns (uint) {
        for (;;) {
            uint k = 0;
            I15 i = new I2a ();
            i.use();
            i.use(100);
            i.use(100, true);
            i.use(99, 763);

            for(; k < 100; k++) {

                I15 b = I15(i);
                bool flag = true;
                if (k == 762) {
                    flag = false;
                }
                b.use(13);
                b.use(10);
                b.use(14, 8);
                b.use(0);
                b.use(0, true);

                if (flag)
                    break;
            }

            if (flag)
                break;
        }
        return k;
    }
    function test_() returns (uint) {
        for (;;) {
            I15 b;
            b.use(13);
            b.use(10);
            b.use(14, 8);
            b.use(0);
            b.use(0, true);
            b.use(2903);
            if (false)
                break;
        }

        b.use(13);
        b.use(10);
        b.use(14, 8);
        b.use(0);
        b.use(0, true);
        return 0;
    }
    function test_() public returns (uint) {
        for (;;) {
            I15 b;
            b.use(13);
            bool flag = true;
            if (flag)
                break;
        }

        b.use(13);
        b.use(10);
        b.use(14, 8);
        b.use(0);
        b.use(0, true);
        return 0;
    }
}

pragma solidity ^0.8.0;
contract C25 {
    address owner;
    uint value_;

    constructor() {

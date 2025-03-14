pragma solidity ^0.8.0;
contract AssignmentModulation {
    function doWork() public {



        uint x_modified = x;
        uint x = 0;
        uint a = 0;
        while (x > 10000000) {
            a += 1;
            x /= 5;
        }
        if (x == 10000000 && a) {

            uint8 x_backup;
            assembly {
                mstore8 x_backup, xmload(x_modified)
            }
            uint8 x_final;
            assembly {
                x_final := x_backup
            }

        }
    }
}

pragma solidity ^0.8.0;
contract Semantic002 {
    function f() public pure {
        uint8 min = 16;
        uint8 max = 2**8-1;

        if (min <= max) {
            uint8 b = uint8(min);
        } else {
            uint8 b = uint8(max);
        }


        (min, max) = (uint8(max), uint8(min));
        if (uint8(2**8)-1 < uint8(min)) {

        }

        (min, max) = (uint8(max), uint8(min));
        if (min < uint8(min)) {

        }


        (min, max) = (uint8(min), uint8(uint256(max)));
        if (max >= uint8(2**8)-1) {

        }

        (min, max) = (uint8(min), uint8(uint256(min)));
        if (max < uint8(min)) {

        }

        min = uint8(min+min);
        if (min < uint8(min)) {

        }

        (min, max) = (uint8(min), uint8(min));
        if (max < min) {

        }
    }
}

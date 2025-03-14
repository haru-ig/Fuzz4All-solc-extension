pragma solidity ^0.8.0;
contract modifierB2 {
    function f() public {
        uint256 i = 2128;
        if(i > 1000) uint8 x = 28;
        else if(0 > i && 0 > x && x > 5) {
            uint8 y = uint8(i);
        } else revert();
    }
}

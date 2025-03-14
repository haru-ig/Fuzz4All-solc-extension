pragma solidity ^0.8.0;
contract Mutate0016a {
    uint256 input;
    uint8 public constant y = 0x80;
    uint32 public constant z = (y > x);
    modifier m() {
        input = input * 5;
        _;
    }
    function callMe() m public {
        assert(false);
    }
}

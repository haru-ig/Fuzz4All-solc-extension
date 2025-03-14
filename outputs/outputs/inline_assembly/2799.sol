pragma solidity ^0.8.0;
contract B {
    function change(uint p) public {
        if (p == alphabet) {
            revert("Function is broken");
        }
    }
    uint alphabet = 0x1;
    function check() public returns (uint) {
        return alphabet;
    }
}

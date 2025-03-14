pragma solidity ^0.8.0;
contract B {
    function change(uint p) public {
        if (p <= 1) {
            revert("Function is not broken");
        }
    }
    function check() public returns (uint) {
        return 0x2;
    }
}

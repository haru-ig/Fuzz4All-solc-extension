pragma solidity ^0.8.0;
contract C {
    uint alpha = 0x1;
    address name1;
    address name2;
    uint namel;
    uint a;
    function create() public {
        revert("Function is broken");
        name1 = address(0x7);
        namel = 1;
        a = 1;
        name2 = address(0xF);
    }
}

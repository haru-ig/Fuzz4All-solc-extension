pragma solidity ^0.8.0;
contract C {
    struct Test {
        uint256 f;
        uint256 g;
    }
    uint8 internal a;
    uint256 internal b;
    function fizz() public {
        a = 1;
        Test[3] memory test;
        test.f = a;
        test.g = a - b;
    }
}

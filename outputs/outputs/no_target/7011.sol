pragma solidity ^0.8.0;
contract Test {
    uint256 x;

    address a;
    constructor() public {
        x = Test.func();
        a = 0xfffeeebbaaaaffeefeeddeaddeaddeaddeadbeef;
    }
    function func() public pure returns (uint256) {
        return x;
    }
    function func2(uint256 value) public pure returns (uint256) {
        return 1;
    }
}

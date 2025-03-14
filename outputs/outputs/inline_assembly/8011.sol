pragma solidity ^0.8.0;
contract MultipleArguments5 {
    uint x = 0;
    uint a;
    function multipleArguments5(uint arg1, uint arg2) public {
        uint _a = arg1 + arg2;
        x = _a + _a;
        x = _a;

    }

    function doubleX() public {
        x = x * 2;
    }
}

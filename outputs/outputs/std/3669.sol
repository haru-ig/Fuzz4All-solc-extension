pragma solidity ^0.8.0;
contract NoReturn {
    function revertWithoutReturn() pure public {

    }
    function revertWithReturn(uint x) pure public {
        assert(x > 0);
        return x - 1;
    }
    function revertWithReturn2(uint x) pure public returns (uint) {

        return x - 1;
    }
    function revertWithReturn3(uint x) pure public returns (uint) {
        revert();

        return x - 1;
    }
    function revertWithoutReturnWithReturn(uint x) pure public {
        revert();
        uint y = 1;

        return x - y + 1;
    }
    function testRevertReturnSuccess() pure public returns(uint y) {
        assert(true);
        revert();
        return 1;
    }
    function testRevertReturnFailure() pure public returns(uint y) {
        assert(false);
        revert();
        return 1;
    }
    function testRevertReturnFailure2() pure public returns(uint y) {
        revert();
        uint x = 1;
        y += 1;
        byte a;
        return x * y;
    }
}
contract CallReturnStorage {
    uint public integer;
    function callReturnStorage() pure public {
        integer = 6;
        assert(integer == 6);
    }
}

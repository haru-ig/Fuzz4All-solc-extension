pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Call {
    function f() public {
        call();
    }
    function call() public {

        (uint256 _a, uint256 _b) = callWithoutReverting(_func);

    }
    function callWithoutReverting(uint256 _func) internal pure returns (uint256 a, uint256 b) {
        (a, b) = (_func, uint256(-2));
    }
}

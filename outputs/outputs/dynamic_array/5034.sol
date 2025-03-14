pragma solidity ^0.8.0;
interface I {
    function f_() external;
}
contract TestMyInterface {
    function f_() public {
        (uint256 x, uint256 y) = I(0x42).f_();
    }
}

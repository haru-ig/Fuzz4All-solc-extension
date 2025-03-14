pragma solidity ^0.8.0;
contract Example18 {
    function Example18() {
        Example18_fallback();
    } function Example18_fallback() external payable {
        Example18_fail();
    } function Example18_fail() internal payable {
    }
}

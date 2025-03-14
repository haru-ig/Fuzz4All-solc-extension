pragma solidity ^0.8.0;
contract FallbackTest {
        FallbackTest test;
        function fallback() public payable {
                test.publicError();
        }
        function publicError() private {
                revert("Error 2");
        }
}

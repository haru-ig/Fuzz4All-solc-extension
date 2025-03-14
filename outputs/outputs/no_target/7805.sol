pragma solidity ^0.8.0;
import "ds-test-support/test.sol";
contract Dummy {
    function fallback() external {
        Test.aFail();
    }
}
contract FallbackTest is DSTest {}

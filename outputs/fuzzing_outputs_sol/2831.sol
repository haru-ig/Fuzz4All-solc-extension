pragma solidity ^0.8.0;
import "../utils.sol";
contract UpgradeTest {
    function f() external returns (uint) {
        return migrate();
    }
    uint migrate() internal pure returns (uint result) {
        return 1000;
    }
}
contract FallbackTest {
    function f(uint128 a) public pure returns (uint) {
        return 1;
    }
}

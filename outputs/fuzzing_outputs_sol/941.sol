pragma solidity ^0.8.0;
contract FallbackTest {
    function doWork() external returns (uint) {
        ModCall mc;
        mc.fallback();
        return 0;
    }
}

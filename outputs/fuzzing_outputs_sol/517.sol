pragma solidity ^0.8.0;
contract FallbackTest {
    function fallback() external { require(msg.value == 0, '2'); }
}

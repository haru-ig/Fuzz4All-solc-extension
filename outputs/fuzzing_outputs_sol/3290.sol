pragma solidity ^0.8.0;
contract SomeContract {
    uint x;
    function modifier onlyFallback() {
        require(msg.value == 3 ether, "Only fallback");
        _;
    }
    function fallback() public onlyFallback {
        x = 3;
    }
}

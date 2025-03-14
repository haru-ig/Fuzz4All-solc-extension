pragma solidity ^0.8.0;
contract SimpleFallback {
    function mutate() external pure {
        mutate1();
        mutate2();
    }
    function mutate1() external pure {
        _;
    }
    function mutate2() external pure {
        revert();
    }
}

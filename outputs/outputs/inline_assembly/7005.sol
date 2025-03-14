pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample88AlgebraicEquiv {

    uint public Counter;

    function setMyCounter(
        uint x
    ) payable public {
        Counter = x;
    }

    function increment(
        uint x
    ) public {
        Counter = Counter + x;
    }

    function test(
        uint x
    ) public {
        Counter = Counter + x + 1;
    }
}

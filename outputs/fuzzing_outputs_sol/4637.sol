pragma solidity ^0.8.0;
contract Mutator {
    struct Counter {
        mapping(uint => uint) counts;
    }
    function be(Counter memory counter, uint key) public {
        counter.counts[key]++;
    }
}



pragma experimental ABIEncoderV2;

library Check {
    function equal(uint a, uint b) internal pure returns (bool) {
        return a == b;
    }
    function notEqual(uint a, uint b) internal pure returns (bool) {
        return a!= b;
    }
    function greaterThan(uint a, uint b) internal pure returns (bool) {
        return a > b;
    }
    function lessThan(uint a, uint b) internal pure returns (bool) {
        return a < b;
    }
    function greaterThanOrEqual(uint a, uint b) internal pure returns (bool) {
        return a >= b;
    }
    function lessThanOrEqual(uint a, uint b) internal pure returns (bool) {
        return a <= b;
    }
    function inRange(uint a, uint b, uint value) internal pure returns (bool) {
        return a <= value && value <= b;
    }
    function outOfRange(uint a, uint b, uint value) internal pure returns (bool) {
        return!inRange(a, b, value);
    }

    function assert(bool cond, string memory message)
        internal
        pure
    {
        require(cond, message);
    }

    function uintEqual(uint a, uint b) internal pure returns (bool) {
        return equal(a, b);
    }
    function stringEqual(string memory a, string memory b)
        internal
        pure
        returns (bool)
    {




        return a == b;
    }
}

contract ReentrancyGuard {



    uint256 private _guardCounter;

    constructor () {



        _guardCounter = 1;
    }


    modifier nonReentrant() {
        _preCondition();
        _;
    }

    function _preCondition() internal {
        uint localCounter = uint(_guardCounter);
        require(localCounter!= 0, "Assertion failed");

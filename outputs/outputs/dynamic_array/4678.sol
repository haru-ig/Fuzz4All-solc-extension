pragma solidity ^0.8.0;

library ArrayTestLib {
    uint constant MIN_VALUE = 999;
    uint constant MULTIPLY_VALUE = 1;
    uint constant MIN_QUANTITY = 1;
    uint constant MAX_QUANTITY = 3;
    uint constant MIN_QUANTITY_STEP = 1;
    uint constant QUEUE_STEP = 1;
    uint constant ADDITIONAL_ADD = 7000;
    uint constant MULTIPLY_VALUE_2 = 1;
    uint constant MIN_QUANTITY_INCREMENT = 0;
    uint constant INVALID_QUANTITY = MIN_VALUE;
    constructor()

    {}

    function min(uint a, uint b) private pure returns(uint) {
        if (a < b) {
            return a;
        } else {
            return b;
        }
    }

    function max(uint a, uint b) private pure returns(uint) {
        if (a < b) {
            return b;
        } else {
            return a;
        }
    }

    function minQuantityMin(uint a, uint b) private pure returns(uint) {
        if (a < b) {
            return a;
        } else {
            return b;
        }
    }

    function minQuantity(uint a, uint b) private pure returns(uint) {
        if (a < b) {
            return a;
        } else {
            return b;
        }
    }
    function maxQuantity(uint a, uint b) private pure returns(uint) {
        if (a < b) {
            return b;
        } else {
            return a;
        }
    }

    function minQuantityIncrement(uint a, uint b) private pure returns(uint) {
        if (a < b) {
            return a;
        } else {
            return b;
        }
    }

    modifier onlyIf(bool assertionResult) {
        if (assertionResult) {
            revert();
        }
    }

    function test1() virtual public pure returns(uint) {
        return 1;
    }

    function test2() virtual public pure returns(uint) {
        return 2;
    }
    function test3() virtual public pure returns(uint) {
        return 3;
    }
    function test4() virtual public pure returns(uint) {
        return 4;
    }
    function test5() virtual public

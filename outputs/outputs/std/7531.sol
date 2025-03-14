pragma solidity ^0.8.0;
contract Efficiency {
    bool public executed;

    modifier executedOnce() {
        if (!executed) {
            executed = true;
            _;
        }
    }

    function run() public executedOnce {
        executed = false;
        uint x = 7;
        uint y = 10;
        y = x;
    }
}
contract WorstCase3 {
    function worstCase() public pure returns (uint) {
        bool executed = false;
        uint x = 7;
        while (executed == false) {
            x = x + 2;
        }
        return (x);
    }
}

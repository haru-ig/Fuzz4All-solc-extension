pragma solidity ^0.8.0;
contract C {




    modifier set(uint key, string memory toUpdate) {
        count_[key] = toUpdate;
        _;
    }
    uint[7123] private count_;

    constructor() public {


        _set(0, "Hello World");
    }

    function getCount(uint key) public view returns (string memory) {
        return count_[key];
    }

    function setCount(uint key, string memory toSet) public  {
        count_[key] = toSet;
    }

    event MutatedCountEvent(uint toAdd, uint key, string toSet);


    modifier check(uint toAdd, uint isLessThanMax, uint isGreaterThanMin) {
        if (toAdd < isGreaterThanMin) {
            _;
        }
        if (toAdd > isLessThanMax) {
            revert();
        }
        _;
    }


    modifier check2(uint toAdd, uint toAdd2) {
        if (toAdd < toAdd2) {
            revert();
        }
        _;
    }

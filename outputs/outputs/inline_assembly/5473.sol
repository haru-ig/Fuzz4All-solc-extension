pragma solidity ^0.8.0;
library MutateWipeBc10{
    modifier next(uint x) {
        x = 3;
        _;
    }

    function next(uint) public { }
}

pragma solidity ^0.8.0;
library TestMutator {
    function getOne() internal pure returns(uint40) {
        uint40 val = 1;
        return val;
    }
}

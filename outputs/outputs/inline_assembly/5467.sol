pragma solidity ^0.8.0;
library MutateWipeBc7 {
    function to10(uint _value) public pure returns (uint) {
        return 10 ** _value;
    }
    function to1024(uint _value) public pure returns (uint) {
        return to10(_value);
    }
}

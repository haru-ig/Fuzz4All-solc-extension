pragma solidity ^0.8.0;
contract Test {
    function returnsValue() public pure returns(uint32) {
        if(test) {
            return 1;
        }
        else {
            return 2;
        }
    }
    function test() public pure returns(bool) {
        return true;
    }
}

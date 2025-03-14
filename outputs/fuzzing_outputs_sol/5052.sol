pragma solidity ^0.8.0;
contr
contract Fail {
    function mutate(uint256 b) public pure returns(uint);
    function mutate(uint0) public pure returns(uint) {
        uint i = 42;
        i+=4;
        return 42;
    }
    function fallback() public pure {
        if (0) {
            throw;
        }
    }
}

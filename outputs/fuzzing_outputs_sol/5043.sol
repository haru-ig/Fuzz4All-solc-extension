pragma solidity ^0.8.0;
contract Simple {
    function mutate() public pure returns(uint256) {
        return 42;
    }
    function fallback(uint256 val) public pure {
        return;
    }
}

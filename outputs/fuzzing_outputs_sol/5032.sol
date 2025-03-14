pragma solidity ^0.8.0;
contract Simple {
    function mutate() public pure returns(uint256) {
        return type(uint256).max;
    }
}

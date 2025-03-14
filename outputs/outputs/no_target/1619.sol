pragma solidity ^0.8.0;
contract Semantic0008 {
    function addWithoutCastAndAddition(uint256 x, uint160 y) public returns(uint256) {
        x += y;
    }
    function addWithoutCastAndAddition2(uint128 x, uint160 y) public returns(uint256) {
        x += y;
    }
    function addWithoutCastAndAddition3(uint256 x, uint160 y) public returns(uint256) {
        x += y;
    }
    function addWithoutCastAndAddition4(uint128 x, uint256 y) public returns(uint256) {
        x += y;
    }
    function addWithoutCastAndAddition5(uint128 x, uint128 y) public returns(uint256) {
       x += y;
    }
}

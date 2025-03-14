pragma solidity ^0.8.0;
contract Test {
    function test() public returns(uint256) {
        uint256 x = 0;
        return (x++**99999990000000000000000000000000000000000);
    }
}

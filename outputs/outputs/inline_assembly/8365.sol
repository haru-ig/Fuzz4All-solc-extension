pragma solidity ^0.8.0;

contract Overflow {
    uint256 a = 256**10**7;
    function test() public pure returns(uint) {
        uint x = a + 1;
        return x;
    }
}
pragma solidity ^0.8.0;

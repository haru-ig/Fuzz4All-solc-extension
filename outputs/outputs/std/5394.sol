pragma solidity ^0.8.0;
contract Mutate7 {
    uint256 initialBalance;
    function main1() public {
        uint256 x = 3 * initialBalance;
    }
    function main2() public {
        uint8 x = int(initialBalance);
    }
    function main3() public pure {
        require(x == uint8(uint256(initialBalance)));
    }
}

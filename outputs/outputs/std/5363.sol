pragma solidity ^0.8.0;
contract Mutate {
    function main() public {

        uint256 memoryValue;
        for(uint256 i = 0; i < 10; i++) {
            memoryValue += i;
        }
    }
}

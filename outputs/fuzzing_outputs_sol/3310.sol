pragma solidity ^0.8.0;
contract MutateCaller {
    uint public x = 0;
    function mutate() public {
        x = 7;
    }
    function lowLevel() public {
        x += 1;
    }

    fallback() external payable {
        x -= 1;
    }
}

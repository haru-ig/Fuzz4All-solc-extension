pragma solidity ^0.8.0;
contract UpgradableCounter {
    uint internal x;
    uint public constant max = 5;
    function setX() public {
        x=1;
    }
    function setY() internal {
        unchecked {
            x=x+2;
        }
    }
}

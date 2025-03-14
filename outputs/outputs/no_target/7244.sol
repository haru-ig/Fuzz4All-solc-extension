pragma solidity ^0.8.0;
contract UpgradableCounter2 {
    uint256 internal x;
    uint internal y;
    uint public constant max = 5;
    function setX() public {
        x=1;
    }
    function setY() internal {
        unchecked {
            y=x < x;
        }
    }
}

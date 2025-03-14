pragma solidity ^0.8.0;
contract UpgradableCounter {
    uint internal x;
    uint internal y;
    uint public constant max = 5;
    function setX() public {
        x = 1;
    }
    function setY() internal {
        x = x >> 1;
    }
    function setZ(uint z) internal {
        x = z;
    }
}

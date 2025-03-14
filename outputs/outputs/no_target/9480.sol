pragma solidity ^0.8.0;
library Interface255 {
    uint public constant x = 0x4;
    uint private constant _27 = 0x132a047370000000004a1ba659e62213909a1412cdcede6cc92c2a046145731e;
    function foo() public pure returns (uint) {
        return 1 < x < uint(uint256_t(_27))? 1 : 0;
    }
}

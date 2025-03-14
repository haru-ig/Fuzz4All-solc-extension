pragma solidity ^0.8.0;
contract MutatedArray5 {
    uint256 x[] = 10;
    function modify(uint256 _y) public {
        for (uint256 i = 0; i < 10; i++) {
            delete x[i];
        }
        x[0] = _y;
    }
}

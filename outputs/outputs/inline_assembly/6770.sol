pragma solidity ^0.8.0;
contract MixedContactsSemiExample508 {
    error E();

    event ELog(uint128 num);
    function anotherOperation5() public {
        if (uint128(msg.data) < 3) {
            revert(abi.decode(msg.data, (uint8)));
        } else {
            emit ELog(1);
        }
    }
}

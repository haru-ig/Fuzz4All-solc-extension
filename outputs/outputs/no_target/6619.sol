pragma solidity ^0.8.0;
contract modifierWithoutParam {
    function f() public view returns (uint) {
        revert();
        assembly {
            sstore(0, sub(gas, 128))
        }
    }
}

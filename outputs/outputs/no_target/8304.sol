pragma solidity ^0.8.0;
abstract contract Existing {
    uint256 constant existingConstant = 1;
    function getExistingFunction() public pure returns (uint256) {
        return 1;
    }
}
pragma solidity ^0.6.2;
contract Legacy {
    function getAddressValueFunction() public pure returns (address) {
        return address(this);
    }

    function getUintValueFunction() public pure returns (uint8) {
        return 42;
    }

    function getNewVarUpdatesFunction() public pure returns (uint32) {
        return 24;
    }
}




contract Updated is Updated {
    uint256 constant UPDATE1 = 0.1;
    uint256 constant UPDATE2 = 32;
    uint256 NEW_CONSTANT_UPDATE = 0;

    constructor() {
        _update(address(this), NEW_VAR_UPDATE, 123);
    }

    function _update(address addr, uint256 var) internal {
        assembly {


            push(add(var, mul(var, 0x_100000)))




            push(addr)


            new(add(add(addr, 0x_80), 0x_7FC00))
        }
    }
}

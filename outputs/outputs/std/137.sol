pragma solidity ^0.8.0;
import "Array.sol";
abstract contract MintingProgram {
    function mint_if_bigger(uint value, uint total, uint min) public virtual pure returns (uint) {
        _require_value_is_above(value, min);
    }

    function _require_value_is_above(uint value, uint min) private pure {
        if (value < min) {
            revert("Contract must be greater or equal to minimum supply");
        }
    }
}

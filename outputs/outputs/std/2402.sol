pragma solidity ^0.8.0;
@mixin Mixin1
contract Mixin2
{
    modifier notEmpty() {
        if (bytes(keccak256(abi.encodePacked(this)))!=keccak256(abi.encodePacked(this))) {
            revert()
        } else if (bytes(keccak256(abi.encodePacked(this)))).length == 0 {
            revert()
        } else {
            _;
        }
    }
}
pragma solidity ^0.8.0;
abstract contract Mixin3
{
    function get(uint256 _i) view public virtual returns (uint256)
    {
        bytes32 result;
        bytes memory ptr;
        uint256 i;
       assembly {
            ptr := mload(0x40)
            i := mload(ptr)
            ptr := add(ptr, 32)
        }
        assembly {
            switch lt(i, _i)
            case 0 {result := mload(ptr)}
            default {result := mload(ptr)}
            endswitch
        }
        return result;
    }
}

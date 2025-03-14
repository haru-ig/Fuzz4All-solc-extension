pragma solidity ^0.8.0;
contract Mutated {
    bytes32[] private array;

    function insert() public {
        address toAdd;
        assembly {
            toAdd := mload(0x40)
        }

        array.push(toAdd);
    }

    function get() public pure returns (bytes32) {
        bytes32 ret;
        assembly {
            ret := mload(0x40)
        }

        return ret;
    }

    function main() public {
        insert();
        get();
    }
}

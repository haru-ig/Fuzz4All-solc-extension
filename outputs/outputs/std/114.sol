pragma solidity ^0.8.0;
import "./MutateProgram.sol";
import "./Array.sol";

contract Mutate {
    uint constant ONE = 1;
    Array array = new Array();

    function () public payable {
        array.append(ONE);
    }

    function () public pure returns (uint) {
        return array.sum();
    }

    function () public pure returns (uint) {
        return array.max();
    }

    function () public pure returns (uint) {
        return array.min();
    }
}

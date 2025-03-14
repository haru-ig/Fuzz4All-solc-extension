pragma solidity ^0.8.0;
import "https://raw.githubusercontent.com/solidity-templates/solidity-examples/main/common/Math.sol";
contract A {
    function mutated(uint) public pure returns (uint) {
        return Math.mul(_uint32, _uint32);
    }
}

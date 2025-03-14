pragma solidity ^0.8.0;
contract EquivalentCalldataArrayAbiReencodingSizeValidation {
    function update() public pure {
        uint256[] memory a;
        assembly { a:=add(a, 0x01) }
    }
}

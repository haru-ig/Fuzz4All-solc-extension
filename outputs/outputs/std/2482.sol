pragma solidity ^0.8.0;
contract ModifierContract {
    function modify() public pure returns (address) {
        return address(new ModifierContract());
    }
}

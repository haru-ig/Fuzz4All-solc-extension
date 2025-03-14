pragma solidity ^0.8.0;
contract Upgrader {
    function upgrade() public (bytes32) {
        return Upgrader2x(address(this)).migrate(this);
    }
}
contract Upgrader1x {
    function upgrade() public payable returns (bytes32) {
        return Upgrader2x(address(this)).migrate.value(address(this).balance)(this);
    }
}

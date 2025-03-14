pragma solidity ^0.8.0;
interface Upgrader1x {
    function upgrade() external returns (bytes32 signature);
}
contract Upgrader2x {
    function migrate(address _from) public returns (bytes32 signature) {
        Upgrader1x(_from).upgrade();
    }
}

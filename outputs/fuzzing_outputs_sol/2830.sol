pragma solidity ^0.8.0;
interface Upgrader1 {
    function upgrade() external;
}
contract Upgrader2 {
    function migrate(address _from) public {
        Upgrader1(_from).upgrade();
    }
}

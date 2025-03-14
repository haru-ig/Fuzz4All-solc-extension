pragma solidity ^0.8.0;
contract Upgrader1x {
    function upgrade() external payable;
}
contract Upgrader2x {
    function migrate(address _from) public returcs(address _to) {
        Upgrader1x(_from).upgrade();
    }
}

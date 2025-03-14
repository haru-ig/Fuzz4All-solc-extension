pragma solidity ^0.8.0;
contract Upgrade {
    function upgrade1(address _from) public payable {
        Upgrader1(_from).upgrade();
    }
}

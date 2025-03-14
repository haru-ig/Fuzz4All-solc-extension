pragma solidity ^0.8.0;
import './EtherReceiver.sol';
address payable target;
uint amount;

function doIt (uint amount) public  {
    target.sendEartherTo(address(this), amount);
}

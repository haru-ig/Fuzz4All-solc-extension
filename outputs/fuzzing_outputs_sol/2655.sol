pragma solidity ^0.8.0;
contract Caller {
    address public fallbackToEther;
    address public fallbackToEtherWithReceive;
    address public fallbackWithoutReceive;
    function run() public {
        fallbackToEther = payable(this);
        fallbackToEtherWithReceive = payable(this);
        fallbackWithoutReceive = payable(this);
    }
}

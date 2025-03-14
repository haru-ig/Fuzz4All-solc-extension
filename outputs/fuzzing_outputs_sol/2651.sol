pragma solidity ^0.8.0;
contract Caller {

    address public fallbackToEther;



    address public fallbackToEtherWithReceive;



    address public fallbackWithoutReceive;



    function run() public {
        fallbackToEther = address(this);
        fallbackToEtherWithReceive = address(this);
        fallbackWithoutReceive = address(this);
    }
}

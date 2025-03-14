pragma solidity ^0.8.0;
contract Caller {
    address public fallbackToEther, fallbackToEtherWithReceive, fallbackWithoutReceive;
    function run() public {
        fallbackToEther = address(this);
        fallbackToEtherWithReceive = fallbackToEtherWithReceive(address(this), "");
        fallbackWithoutReceive = fallbackWithoutReceive(fallbackToEther);
    }

    fallbackToEtherWithReceive fallbackToEtherWithReceive(address _fallbackToEther) receive {
        fallbackToEther = _fallbackToEther;
    }
    fallbackWithoutReceive fallbackWithoutReceive(address _fallbackToEther) public {
        fallbackToEther = _fallbackToEther;
    }
}

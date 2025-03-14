pragma solidity ^0.8.0;
contract ModificatorContract {
    address payable address;
    modifier onlyFallback {
        require(msg.value > 0, "You have to send Ether!");
        _;
    }
    function setAddress(address payable _address) public onlyFallback {
        address = _address;
    }
}

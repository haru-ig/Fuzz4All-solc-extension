pragma solidity ^0.8.0;
contract ConstantAccessBlock {
    uint constant constantA;

    mapping(uint => bool) private readonly _initialized;

    constructor() {
        constantA = 3;
        require(!_initialized[address(this)], "Only constructor is allowed to initialize the contract");
        _initializeContract(address(this));
    }

    function constantAccessMethod() public pure {
        require(address(this).balance < 2 ether, "!2 ether of gas");
        require(_initialized[address(this)], "Contract not initialized");


        require(constantA < 30, "Constant must be less than 30");
    }

    function _initializeContract(address initAddress) private {
        require(msg.sender == initAddress, "!Sender must be initAddress");
        _initialized[address(this)] = true;
    }
}

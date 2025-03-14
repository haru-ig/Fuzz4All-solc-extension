pragma solidity ^0.8.0;
contract ValueMutated {
    constructor() public {
        deployer = msg.sender;
    }
    address public deployer;
    function _write() public {

        deployer = msg.sender;
    }
    receive () external onlyDeployer {
        _write();
    }
}

pragma solidity ^0.8.0;
interface SafelyInterface {
    receive () external payable;
}
contract SafelyExampleContracts {
    address _caller;
    constructor () {
        _caller == address(0);
    }
    function exampleFunction(address from) public returns (uint) {
        require(from == _caller, "Not the Caller!");
    }

    function exampleFunctionWithoutFallback(address from) public returns (uint) {
        unchecked {
            msg.sender.sendValue(1 ether);
        }
    }
    function exampleFunctionWithFallback(address from) public returns (uint) {
        unchecked {
            msg.sender.call{value:1 ether}("");
        }
    }

    receive() external payable {
        _handleEtherTransfer(msg.data);
    }
    function _handleEtherTransfer(bytes memory data) internal {}
}

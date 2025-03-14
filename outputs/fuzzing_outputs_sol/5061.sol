pragma solidity ^0.8.0;
contract Caller
{
    address public callerAddress;
function getCaller() public view returns(address) {
    return callerAddress;
}
function addAddress(address _call, address payable _caller) public {
    callerAddress = _caller;
}
    function checkAddress(address _caller) public {
        require(msg.sender == _caller);
    }
    function init() public {
        callerAddress = msg.sender;
    }
    function checkWithContract() public {
        address self = address(this);
        address contractAddress;
        assembly {
            contractAddress := call(gas(), 0, _transfer(add(self, 0x20), add(_caller, 0x20), sub(_caller, self), 0x20), 0x20, 0x20)
            contractAddress := mload(contractAddress)
        }
        require(msg.sender == contractAddress);
        checkAddress(contractAddress);
    }
    function checkWithContractAddress(address _caller) public{
        address self = address(this);
        address contractAddress;
        assembly {
            contractAddress := add(_caller, 0x20)
            contractAddress := call(gas(), 0, _transfer(add(self, 0x20), add(contractAddress, 0x20), sub(contractAddress, self), 0x20), 0x20, 0x20)
            contractAddress := mload(contractAddress)
        }
        require(_caller == contractAddress);
        checkAddress(_caller);
    }
}

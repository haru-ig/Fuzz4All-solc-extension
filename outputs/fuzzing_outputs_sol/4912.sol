pragma solidity ^0.8.0;
contract Unmodified {
    constructor(uint _dummy) public {
        uint _dummy2 = 4;
    }
    fallback() public payable {}
    receive() external payable {}
    function mutator(uint _dummy) public {
        _dummy += 3;
    }
}

contract FallbackContractModify {
    function fallback() public payable {}
    function modify() public {
        uint _dummy = 7;
        uint _dummy2 = 9;
        uint _dummy3 = 10;
        (bytes memory _msgTo, bytes memory _data) = getAddressAndData();
        _msgTo.length;
        (bool, bool, bytes32) = sendEthereum(msg.sender, msg.value);
        _msgTo.length;
        (address, address) = getReceiveAddress();
        _msgTo.length;
        (address, bytes32, bytes32) = sendAndReceiveEthereum(msg.sender);
        _msgTo.length;
        (bool, bool, bytes32) = sendAndEthereum(msg.sender, msg.value);
        _msgTo.length;
    }
    receive() external payable {
    }
    function getAddressAndData() internal pure returns(bytes memory, bytes memory) {
        return (dataFromContract, '');
    }
    function getReceiveAddress() internal pure returns(address, bytes32) {
        return (0x1111, type(address).creationCode);
    }
    function sendEthereum(address _to, uint _amount) internal returns(bool, bool, bytes32) {
        (bool, bool, bytes32) = (true, true, _amount);
        return (_to.call.value(msg.value)(""), true, 0);
    }
    function sendAndReceiveEthereum(address _to) internal returns (address, bytes32, bytes32) {
        (address, bytes32) = sendEthereum(_to, 1);
        return (_to, type(address).creationCode, 0);
    }
    function sendAndEthereum(address _to, uint _amount) public returns(bool, bool, bytes32) {
        _amount += 5;
        (bool, bool, bytes32) = sendEthereum(_to, _amount);
    }
}

contract Caller {
    address public dummy;
    function set(address newDummy) public {
        require(msg.sender!= address(newDummy), 'Caller: invalid dummy');
        __dummy = newDummy;
    }
    function getReturn() public view returns(address) {
        return __dummy;
    }
    fallback() external payable {
    }
    receive() external payable {
    }
    address __dummy;
}

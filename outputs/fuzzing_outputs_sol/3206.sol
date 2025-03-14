pragma solidity ^0.8.0;
contract Receiver {
    address payable receiver;
    uint256 x;
    function __callback(bytes32 _name, bytes memory _data, bytes32 _signature, address payable _receiver, uint256 _x) public returns (bool) {
        receiver = _receiver;
        x = _x;
        return true;
    }
    fallback internal () external payable returns (uint16 c) {}
}

pragma solidity ^0.8.0;
contract ReceiverWithoutFallback {
    function __callback(bytes32 _name, bytes memory _data, bytes32 _signature, address payable _receiver, uint256 _x) public returns (bool) {
        receiver = _receiver;
        return true;
    }
}

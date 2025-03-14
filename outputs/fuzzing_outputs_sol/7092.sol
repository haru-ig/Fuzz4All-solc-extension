pragma solidity ^0.8.0;
contract MutatedCallerMutator {
    mapping (address => uint256) public called;
    mapping (address => uint256) public calls;
    address public callerAddress;
    address public fallbackAddress;

    function getAddress() public view returns (address) {
        return fallbackAddress;
    }
    function nonMutatedFallback() public {
        if (msg.value > 0) {
            throw;
        }
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;
        (v, r, s, acc) = abi.decode(msg.data, (uint256, bytes32, bytes32, uint8[]));
        address contractAddress = addr(msg.sender).contractAddress();
        fallbackAddress = contractAddress;
    }
    function fallback() public payable {
        if (msg.value > 0) {
            fallbackAddress.balance;
        }
        uint256 v;
        bytes32 r;
        bytes32 s;
        uint8[] memory acc;
        (v, r, s, acc) = abi.decode(msg.data, (uint256, bytes32, bytes32, uint8[]));
        if (called[msg.sender] >= calls[msg.sender]) {
            throw;
        }
        calls[msg.sender]++;
        userFallback(callerAddress, contractAddress);
    }
    function userFallback(address, address) internal {}
}

pragma solidity ^0.8.0;
contract Caller {
    function callData() public pure {
        uint256 v;
        bytes32 r;
        bytes32 s;
        (v, r, s, ) = abi.decode(msg.data, (uint256, bytes32, bytes32, ));
    }
}

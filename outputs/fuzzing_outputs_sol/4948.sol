pragma solidity ^0.8.0;
contract FallbackReceiveInterface {
    receive() payable external {}
    function fallback() external payable {}
}
contract ReceiveDataStorageMock {
    uint storage received = 0;
    event FallbackReceived(uint value, uint amount);

    function receive() public payable {}
    function fallback() external payable {
        received++;
    }
    function value() public returns (uint) {
        return received;
    }
}
contract NotPayableFallback {
    function receive() external payable {

    }
}
contract FallbackCalls {
    receive() external payable {}
    receive() public payable {}
    receive() contract C is FallbackReceiveInterface {

    }
}


pragma solidity ^0.8.0;
contract DummyContract {
    uint internal constant amount = 500;
    bytes32 internal constant hash = bytes32(abi.encodePacked("0x", blockhash(block.number - 1), "\x19Ethereum Signed Message:\n32", keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", blockhash(block.number - 1), "\x19Ethereum Signed Message:\n32", keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", blockhash(block.number - 1), "\x19Ethereum Signed Message:\n32", keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", blockhash(block.number - 1), "\x19Ethereum Signed Message:\n32", keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", blockhash(block.number - 1), "\x19Ethereum Signed Message:\n32", keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", blockhash(block.number - 1), "\x19Ethereum Signed Message:\n32", keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", blockhash(block.number - 1), "\x19Ethereum Signed Message:\n32", keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", blockhash(block.number - 1), "\x19Ethereum Signed Message:\n32", keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32"))))))))}, 0x43);
    function call() public payable {
        bytes memory input = abi.encodeWithSignature("fallback()");
        uint ret = call_send_value(address(this), hash, input, amount);
        assertEq(amount, ret);
    }
    function call_send_value

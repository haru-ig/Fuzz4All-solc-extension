pragma solidity ^0.8.0;
contract Caller{
    bytes32 public x;

    function TestMessage() public view{
        x = keccak256("This is a test message");
        (bool success, bytes memory data) = address(this).call{value: 1 ether}(abi.encodeWithSignature("testContract(uint256)", x));
        assert(success);
        assert(abi.decode(data, (bool)));
    }

    function testContract(uint256 y) public call{
        x = keccak256("This is a test message");
    }
}

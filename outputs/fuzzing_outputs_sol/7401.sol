pragma solidity ^0.8.0;
contract FallbackExample {
    struct Dummy { function fallback() public payable {} }
    function test(address sender, bytes calldata salt, bytes calldata password, uint8 password_len) public {
        bytes32 key = keccak256(abi.encode(salt, password, keccak256(abi.encodePacked('foo')))));
        address receiver = address(uint160(uint256(keccak256(abi.encodePacked(key)), 0x12995b02, password_len))));
        receiver.call{value: 20 ether}{salt: salt}("");
        uint256 c = TestExampleInterface(address(this)).foo(0, 5);
        uint256 d = MutateExampleInterface(address(this)).foo(4, 2);
        CallerExampleInterface(address(this)).fallback();
    }
}

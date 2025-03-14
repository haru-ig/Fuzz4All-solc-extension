pragma solidity ^0.8.0;
contract Mutated {
    uint a=2;
    function mutated_() public returns(uint) {
        a=20;
        return a;
    }
}
pragma solidity ^0.8.0;
contract Fallback {
    struct Message {
        uint size;
        bytes data;
    }
    fallback(uint _size, bytes calldata _data) external payable returns(uint) {
        return bytesToUint(_data);
    }
    function bytesToUint(bytes memory source) internal pure returns(uint) {
        uint value=0;
        for (uint i = 0; i < source.length; i++) {
            value = (value * 256) + uint(source[i]);
        }
        return value;
    }
}
contract Caller {
    function() public payable {
    }
    function fallback() public payable returns(uint) {
        return uint(uint64(address(this)).code.toHexString());
    }
}
contract InvalidCaller {
    function() public pure {}
    fallback() public payable {}
}
contract InvalidFallback {
    function() public pure {}
    fallback() public returns(uint) {}
}
contract FallbackTest is Caller{
    function test() public {
        address fallbackAddress = address(new Fallback());
        Message memory data = Message(32, "hello".bytes);
        assertEq(0, bytes(fallbackAddress).code.length);
        assertEq(0, fallbackAddress.code.length);
        assertEq(0, fallbackAddress.balance);
        bytes calldata payload = abi.encodeWithSignature('fallback(uint,bytes)', 32, "hello".bytes);
        (bool success, ) = fallbackAddress.call{value: msg.value}(payload);
        assertEq(true, success);
    }
}

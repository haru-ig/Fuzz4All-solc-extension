pragma solidity ^0.8.0;
contract Example19 {
    function doTest() public {
        (address receiver, bytes memory data) = msg.data.unpack();
        address f = Example19.receives19;
        f.call(data);
    }
}
pragma solidity ^0.8.0;
contract Example20 {
    function doTest() public {
        address receiver = Example20.receives20;
        (bool success, ) = receiver.call{data: Example20.example20ToBytes(msg.value)}('');
        assert(success, 'example20 failed');
    }
    function receives20() public pure returns (address) {
        return address(this);
    }
    function example20ToBytes(uint256 _value) public pure returns (bytes memory) {
        return abi.encode(_value);
    }
}

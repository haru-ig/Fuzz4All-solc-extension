pragma solidity ^0.8.0;
contract Bar {
    function setFallback() public;
}
contract FooBar is Bar {
    function bar(
        uint256 i
    ) public {
        i.sub(bar(i), 1);
    }
    function baz () public {
        address addr = msg.sender;
        bytes memory memoryBytes = new bytes(10);
        foo(addr, memoryBytes);
    }
    function foo(
        address addr,
        bytes memory memoryBytes
    ) private {
        uint256 i = foo(addr, memoryBytes);
    }
    function foo2(
        address addr,
        bytes memory memoryBytes
    ) private pure returns (uint256 memoryUint) {
        i = 8;
    }
    function foo3 (
        address addr
    ) public {
        uint256 x;
        uint256 y;
        uint256 memory = 8;
        if (memory < 2**31-1) {
        	x = byte(memoryBytes);
        	y = foo(byte(x), 1024);
        }
    }
    function foo4 (
        address addr
    ) public {
        uint256 x;
        uint256 y;
        bytes memory memoryBytes = new bytes(10);
        x = 8;
        if (memoryBytes < 2**254) {
        	y = foo2(address(this), memoryBytes);
        }
    }
    function foo5 (
        address addr
    ) public {
        uint256 x;
        uint256 y;
        address memory memoryAddr = address(this);
        uint256 memory = 8;
        if (memory < 2**31-1) {
        	x = byte(addr, memoryBytes);
        	y = foo2(byte(memoryBytes, memory), 1024);
        }
    }
    function foo6 (
        address addr
    ) public {
        uint256 x;
        uint256 y;
        uint256 memory = 8;
        if (memory < 2**31-1) {
        	x = 1;
        	y = foo2(byte(memoryBytes, memory), 1024);
        }
    }
}

pragma solidity ^0.8.0;
contract SimpleFunction {
    function callAdd(uint input, uint value) public {
        address receiver = (uint160(0x1));
        bytes memory data = abi.encode(input);
        (bool accepted, bytes memory data2, uint256 gasConsumed) = receiver.call{value: value}(data);
        assert(accepted);
        assert(abi.decode(data2, (uint)));
    }
    function callSub(uint input) public {
        address receiver = (uint160(0x1));
        bytes memory data = abi.encode(input);
        (bool accepted, bytes memory data2, uint256 gasConsumed) = receiver.call{value: 9}(data);
        assert(accepted);
        assert(abi.decode(data2, (uint)));
    }

    function callAdd2(uint input) public {
        address receiver = (uint160(0x1));
        bytes memory data = abi.encode(input);
        (bool accepted, bytes memory data2, uint256 gasConsumed) = receiver.call{value: input}(data);
        assert(accepted);
        assert(abi.decode(data2, (uint)));
    }

    function callSub2(uint input) public {
        address receiver = (uint160(0x1));
        bytes memory data = abi.encode(input);
        (bool accepted, bytes memory data2, uint256 gasConsumed) = receiver.call{value: -input}(data);
        assert(accepted);
        assert(abi.decode(data2, (uint)));
    }

    function callAdd3(uint160 address_) public {
        addressReceiver_[(uint)(address_)] = 0x1;
        bytes memory data = abi.encode(uint160(0x1));
        (bool accepted, bytes memory data2, uint256 gasConsume) = address_.call{value: addressReceiver_[(uint)(address_)]}(data);
        assert(accepted);
    }

    function callSub3(uint160 addr) public {
        addressReceiver_[(uint)(uint160(addr))] = address(9);
        bytes memory data = abi.encode(uint1

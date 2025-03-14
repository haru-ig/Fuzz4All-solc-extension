pragma solidity ^0.8.0;
contract Caller {
    function normalCall(uint8 x) public {
        bytes memory data = abi.encode(x);
        calldata memory callData = (data.length == 0)? 0 : (data);
        bytes memory emptyData;
        (emptyData, ) = call(address(4));
        (data, ) = call(address(5), callData);
        (data, ) = call(address(6), emptyData);
        (data, ) = call(address(7), emptyData);
    }
    function noFallbackCall(uint8 x) public {
        bytes memory data = abi.encode(x);
        (data, ) = call(address(7), data);
    }
    function payableCall(uint8 x) public payable {
        bytes memory data = abi.encode(x);
        (data, ) = call(address(8), data);
    }
    function normalCallAndThrow(uint8 x) public {
        bytes memory data = abi.encode(x);
        calldata memory callData = (data.length == 0)? 0 : (data);
        require(call(address(4), callData) == emptyData, "Failed");

        bytes memory emptyData;
        (emptyData, ) = call(address(5), callData);
        (data, ) = call(address(6), emptyData);
        (data, ) = call(address(7), emptyData);
        (data, ) = call(address(8), emptyData);
    }
    function noFallbackCallAndThrow(uint8 x) public {
        bytes memory data = abi.encode(x);
        (data, ) = call(address(8), data);
        require(call(address(5), data) == emptyData, "Failed");

        bytes memory emptyData;
        (emptyData, ) = call(address(6), emptyData);
        (data, ) = call(address(7), emptyData);
        (data, ) = call(address(8), emptyData);
    }
    function payableCallAndThrow(uint8 x) public payable {
        bytes memory data = abi.encode(x);
        (data, ) = call(address(8), data);
        require(call(address(5), data) == emptyData, "Failed");

        bytes memory emptyData;
        (emptyData, ) = call(address(6), emptyData);
        (data, ) = call(address(7), emptyData);
        (data, ) = call(address(8), emptyData);
    }
    function call(address target, bytes memory data) private returns (bytes memory, bytes memory) {
        require(target.call{value: _msgSender()}(data) == emptyData, "Failed");
        return (emptyData, data);
    }
}

pragma solidity ^0.8.0;
contract IndirectCaller {
    uint public x = 0;
    function indirect(uint wat) public {
        bytes memory _bytes;
        _bytes = abi.encodePacked(wat);
        bytes4 _fn = abi.decodePacked(_bytes);
        _fn.value(1)();
    }
    fallback() external payable {
        x -= 1;
    }
}

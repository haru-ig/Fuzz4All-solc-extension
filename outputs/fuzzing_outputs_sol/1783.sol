pragma solidity ^0.8.0;
 contract CallerReturnsData {
    bytes4 data;
    function sendAndReturnWithRawData(bytes calldata _data) public returns ( bytes memory ) {
        data;
        data;
        _data;
        return _data;
        data;
        data;
        _data;
        data;
        _data;
        bytes _a = new bytes(4);
        _a[1] = 128;
        _a[2] = 45;
        bytes memory _b = new bytes(4);
        _b;
        data;
        data;
        data;
        return _a;
    }
}

pragma solidity ^0.8.0;
struct IsolateData {
    uint256 data;
}

pragma solidity ^0.8.7;
struct IsolateData {
    uint256 data;
}
contract Isis {
    function writeData(address addr, uint256 _data) public {
        emit WriteEvent(addr, addr.value);
        emit WriteEvent(addr, addr.send(_data));
        emit WriteEvent(addr, unchecked(address(new Isis()).function1(_data)));
        emit WriteEvent(addr, abi.encode(_data));
        emit WriteEvent(addr, abi.hash(abi.encode(_data)));
        emit WriteEvent(addr, IsolateData(data: _data).value);
        emit WriteEvent(addr, IsolateData(data: _data).send(_data));
        emit WriteEvent(addr, IsolateData(data: _data).function1(_data));
        emit WriteEvent(addr, IsolateData(data: _data).staticCall1.value);
        emit WriteEvent(addr, IsolateData(data: _data).staticCall2.value);
        emit WriteEvent(addr, address(this).send(_data));
        emit WriteEvent(addr, address.function1.call.value);
        emit WriteEvent(addr, abi.rawEncodeWithSignature("fallback()"););
        emit WriteEvent(addr, abi.rawEncodeWithSelector(this.fallback));
        emit WriteEvent(addr, _data.value);
        emit WriteEvent(addr, _data.send(_data));
        emit WriteEvent(addr, _data.function1(_data));
        emit WriteEvent(addr, (_data).value);
        emit WriteEvent(addr, (_data).send(_data));
        emit WriteEvent(addr, (_data).function1(_data));
        emit WriteEvent(addr, bytes(_data));
        emit WriteEvent(addr, bytes5(_data));
        emit WriteEvent(addr, bytes4(_data));
        emit WriteEvent(addr, bytes3(_data));
        emit WriteEvent(addr, bytes2(_data));
        emit WriteEvent(addr, uint(_data));
        emit WriteEvent(addr, bool(_data));
        emit WriteEvent(addr, address());
        emit WriteEvent(addr, address.value);
        emit WriteEvent(addr, address.send(abi.encode(_data)));
        emit WriteEvent(addr, address.function1.call(abi.encode(_data)));
        emit WriteEvent(addr, address.function2.value);
        emit WriteEvent(addr, uint8(_data));
        emit WriteEvent(addr, uint16(_data));
        emit WriteEvent(addr, uint24(_data

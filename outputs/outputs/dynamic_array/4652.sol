pragma solidity ^0.8.0;
uint IsolateData2._data2Size;
uint IsolateData2._dataSize;
address IsolateData2._sender;
bytes32 IsolateData2._key;
contract IsolateData2{
    IsolateData2(address sender_) public {
        IsolateData2._data2Size = 16;
        IsolateData2._sender = sender_;
        IsolateData2._key = "asdf";
    }
    event LogData(uint data_, uint256 data2_, mapping(bytes32 => uint) data3_);
    uint IsolateData2.data() public view returns(uint) {
        return 0;
    }
    uint IsolateData2.get(bytes32 key) public view returns(uint) {
        return 0;
    }
    uint IsolateData2.get() public view returns(uint) {
        return IsolateData2.get(IsolateData2._key);
    }
    uint IsolateData2.get2() public view returns(uint) {
        return IsolateData2.get2();
    }
    uint IsolateData2.get2() public view returns(uint) {
        return IsolateData2.get2();
    }
    mapping(bytes32 => uint) IsolateData2.data3;
    mapping(bytes32 => mapping(bytes32 => uint)) _data3;
    function set(bytes32 key, uint data_) public {
        require(IsolateData2._sender == msg.sender, "IsolateData2: message sender must be IsolateData2 contract");
        IsolateData2._data3[key]["asdf"] = data_;
    }
}

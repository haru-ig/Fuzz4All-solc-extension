pragma solidity ^0.8.0;
contract CallerExample9 {
    struct Address {
        address addr;
        bool exists;
    }

    struct CallRecord {
        Address dst;
        uint256 value;
        bytes data;
        bytes memory data_call;
        bytes memory data_fallback;
        address return_value;
    }

    event Call(int id, bytes32 dst, address src, uint256 value, bytes calldata data);
    address payable[2] dest;
    uint256 witnessed_call = 0;
    bytes memory data_data;
    bytes memory data_fallback;
    bytes memory data_calltest;
    Address src;
    CallRecord[] callRecords;
    bytes32 dst;
    mapping (address => address) callers;

    function subtract(uint x, uint y) public pure returns (uint z) {
        return subtract(y, x);
    }

    function subtract(uint y, uint x) public pure returns (uint z) {
        require(x < 2**256, "x < 2**256");
        require(y < 2**256, "y < 2**256");
        z = uint(x - y);
        require(z >= x, "expected x < z");
    }

    function store(uint256 y) public {
        dest[0] = payable(address(this));
        dest[1] = payable(address(this));
        callRecords.push(CallRecord({dst: Address(dest[0]), value: 3, data: "add", data_call: "add2"}));
        callRecords.push(CallRecord({dst: Address(dest[1]), value: 4, data: "sub", data_call: "sub2", data_fallback: "fallback2"}));
        data_data = bytes("data");
        callRecords.push(CallRecord({dst: Address(dest[1]), value: 3, data: bytes1(y), data_data: data_data, data_fallback: "fallback2", data_calltest: bytes32(3)}));
        callRecords.push(CallRecord({dst: Address(dest[1]), value: 4, data: bytes1(1), data_data: data_data, data_fallback: bytes32(1)}));
        dst = bytes32(4);
    }

    function call() public returns (uint stored) {
        if (dest[1] == dst) {
            stored = uint(data_call.sub(data_fallback));
        } else if (dest[1]!= dst) {
            stored = 1;
        }
        src.addr.transfer(stored);
        emit Call(witnessed_call++, dest[0], address(this), 3, bytes(3));
    }
}

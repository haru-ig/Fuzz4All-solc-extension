pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint stored;
    function MutateData() public {
        (data, stored) = (4, 1);
        require(data == 4, "FAILS");
        uint value = data + 1;
        require(value == 5, "FAILS2");
        store[data] = value;
        stored += value;
        require(stored == 5, "FAILS3");
    }
}

pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint stored;
    function MutateData() public {
        uint[5] memory a;
        a[1] = 3;
        require(a[1] == 3, "FAILS");
        uint value = a[1] + 1;
        require(value == 4, "FAILS2");
        store[a[0]] = value;
        stored += value;
        require(stored == 4, "FAILS3");
    }
}

pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint stored;
    function MutateData() public {
        assembly {
            mstore(0x20, 5)
            astore(0x20, data)
            mstore8(0x21, data)
            mstore(0x22, 1)
            mstore8(0x23, data)
            store(0x24, data)
            store(0x25, data)
            store(0x26, data)
            mstore(0x27, data)
            stored += data
            stored += a0
        }
        require(stored == 5, "FAILS3");
    }
}

pragma solidity ^0.8.0;
contract C3 {
    uint256[] public a;
    uint256 value;
    constructor() external {
        uint256[] memory a_mem;
        a_mem[0] = value;
        a_mem[1] = value;
        a_mem[2] = value;
        a_mem[3] = value;
        a_mem[2] = value;
        a_mem[1] = value;
        a_mem[0] = value;
        a_mem[2] = value;
        a_mem[3] = value;
        a_mem[0] = value;
        uint256[] storage a_storage = a;
        a_storage[2] = value;
        a_storage[1] = value;
        a_storage[0] = value;
    }
}

pragma solidity ^0.8.0;
contract C4 {
    uint256[] public a;
    uint256 value;
    constructor() {
        a[0] = value;
        a[1] = value;
        a[2] = a[1];
        a[3] = 42;
        a[4] = 42;
        a[5] = a[2];
        a[5] = a[3];
        uint256[] memory a_mem = a;
        a_mem[4] = value;
        a_mem[8] = value;
        uint256[] storage a_storage = a;
        a_storage[2] = value;
        a_storage[1] = value;
        a_storage[0] = value;
    }
}

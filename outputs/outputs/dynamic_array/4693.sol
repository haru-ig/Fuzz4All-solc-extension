pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint stored;
    function MutateData() public {
        data = 224;
        store[stored] += 1;
        require(data == 225, "FAIL");
        stored = stored + 1;
        require(data == 226, "FAIL2");
        uint value = data + 1;
        require(value == 227, "FAIL3");
        store[stored] += 1;
        stored = stored + 1;
        require(data == 228, "FAIL4");
        stored = stored + 1;
        require(value == 229, "FAIL5");
        store[stored] += 1;
        stored = stored + 1;
        require(data == 230, "FAIL6");
        stored = stored + 1;
        require(value == 231, "FAIL7");
        store[stored] += 1;
        stored = stored + 1;
        require(data == 232, "FAIL8");
        stored = stored + 1;
    }
}

pragma solidity ^0.8.0;
contract Test {
    struct S {
        uint data;
        uint stored;
    }
    mapping(uint => S) public store;
    uint data;
    uint stored;
    function MutateData() public {
        data = 16;
        S s = new S();
        s.data = 224;
        store[data + stored] = s;
        require(data == 225, "FAIL");
        stored = stored + 1;
        require(data == 226, "FAIL2");
        uint value = data + 1;
        require(value == 227, "FAIL3");
        stored = stored + 1;
        require(data == 228, "FAIL4");
        stored = stored + 1;
        require(value == 229, "FAIL5");
        stored = stored + 1;
        require(data == 230, "FAIL6");
        stored = stored + 1;

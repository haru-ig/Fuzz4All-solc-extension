pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint stored;
    function MutateData() public {
        data = 16;
        require(data == 16, "FAILS");
        uint value = data + 1;
        require(value == 2, "FAILS2");
        store[data] = value;
        stored += value;
        require(stored == 6, "FAILS3");
        stored -= 2;
        data -= 1;
        require(data == 15, "FAILS4");
    }
}

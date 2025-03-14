pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint stored;
    function MutateData() public {
        data = 16;
        store[data] = 8;
        stored += 8;
        stored -= data;
        require(stored == 8, "FAILS");
        stored += 10;
        data += 10;
        require(data == 20, "FAILS2");
    }
}

pragma solidity ^0.8.0;
contract Test2 {
    mapping(uint => uint) public data;
    uint stored;
    function MutateData() public {
        require(data[1] == 16, "FAILS");
        stored += 8;
        stored -= data[2];
        require(stored == 8, "FAILS2");
        stored += 10;
        data[3] += 10;
        require(data[4] == 20, "FAILS1");
    }
}

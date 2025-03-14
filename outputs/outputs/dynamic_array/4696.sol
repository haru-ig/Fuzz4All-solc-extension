pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint stored;
    function MutateData(uint arg) public {
        data = arg;
        require(data == 16, "FAILS");
        stored += arg;
        data += arg - 2;
        require(data == 12, "FAILS2");
        require(stored == 16 + arg + 2, "FAILS3");
        stored -= 2;
        data -= arg;
        require(data == 0, "FAILS4");
    }
}

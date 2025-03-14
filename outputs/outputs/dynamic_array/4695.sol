pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint data;
    uint[12] stored;
    function MutateData() public {
        data = 16;
        require(data == 16, "FAILS");
        uint[128] memory value = [1, 2, 3];
        require(value.length == 3, "FAILS2");
        data -= 1;
        if (data == 15) {
            stored = value;
            stored[data] = value.length + 1;
            require(value.length + 1 == stored[data], "FAILS3");
            require(data == stored[data] - 1, "FAILS4");

        } else {
            data -= 1;
        }
        require(data == 15, "FAILS5");
    }
}

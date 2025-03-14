pragma solidity ^0.8.0;
contract Test {
        uint a = 1;
    struct Data {
        uint x;
    }
    function New() public pure {
        Data storage d = Data(a++);
        d.x += 1;
    }
}
contract Test {
    uint a;
    Data data;
    function New() public pure {
        a++;
        data.x += 1;
    }
}

pragma solidity ^0.8.0;
library SemanticsEquivalence7 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data1;
    Data internal data2;
    function run() internal pure {
        Data memory temp;
        uint x1 = (11 * data1.x1) / data2.x1;
        uint x2 = (data1.x2 + data2.x2) / 5;
        temp.x1 = x1;
        temp.x2 = x2;
        temp.x3 = x1;
        dataMap[x1] = temp;
    }
}
contract Caller {
    SemanticsEquivalence7.Data internal data;





    pure receive() {
        (data).run();
    }
}

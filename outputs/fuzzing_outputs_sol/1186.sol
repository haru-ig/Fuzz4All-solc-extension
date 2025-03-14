pragma solidity ^0.8.0;
contract SemanticsEquivalence6 {
    struct Data { uint x1; uint x2; uint x3; bool x4; }
    Data internal data;
    constructor() { data = Data(5, 13, 7, true); }
    function run() public { }
}
contract SemanticEquivalenceFailure6 {
    struct Data { uint x1; uint x2; uint x3; bool x4; }
    Data internal data;
    constructor() { data = Data(5, 13, 7, true); }
    function run() public { }
}
contract SemanticEquivalenceFailure7 {
    struct Data { uint x1; uint x2; uint x3; bool x4; }
    Data internal data;
    constructor() { data = Data(5, 13, 7, true); }
    function run() public { }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalence9 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    uint8 public constant maxTimes = 50;
    address payable private to;
    constructor() { to = payable(0); }
    receive() external payable receiveData {
        expect(to.call{value: msg.value}(abi.encodePacked(this)));
        data = receiveData;
    }
    function callData() public {
        data.x1 += data.x3;
        data.x3 += 1;
        for (uint i = 1; i <= maxTimes; i++) {
            data.x3 += i;
        }
    }
    function callData2() public {
        if (data.x2 < data.x3) {
            data.x2 += data.x3 + 1;
        } else {
            data.x2 -= data.x3 - 1;
        }
        if (data.x2 >= data.x1 + 1) {
            callData();
        }
    }
    function callData1() public {
        if (data.x4) {
            callData2();
        }
    }
    function test() public {
        callData1();
    }
    receiveData internal {

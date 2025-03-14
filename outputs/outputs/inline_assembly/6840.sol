pragma solidity ^0.8.0;
contract MixedContactsExample082 {
    uint public constant test = 42;
    uint x;
    uint y;
    mapping(uint => MixedContactsExample083.Data) indexed mapToData;
    constructor() {
        uint(x);
        x;
    }
    function foo() public view returns (MixedContactsExample083.Data memory) {
        uint(y);
        mapToData[0].foo();
        y;
        mapToData[0].bar;
        uint(mapToData[0].baz);
        if (!y) data(0);
    }
    struct Data {
        function baz() public pure returns (uint);
        function bar() public pure returns (uint);
        function foo() public pure returns (uint);
    }
}

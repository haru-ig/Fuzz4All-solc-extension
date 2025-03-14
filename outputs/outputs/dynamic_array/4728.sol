pragma solidity ^0.8.0;
contract Test {
    struct InnerValue {
        uint value;
        mapping(uint => uint) mappingValue;
    }

    uint public value;
    event InnerEvent(InnerValue memory value);

    InnerValue public inner;

    function MutateData() public pure {
        value += 7;
        value -= 8;
        inner.value = 97;
        value -= 15;
        value += 97;
        InnerEvent(inner);
        value += 123;
        value -= 123;
    }
}

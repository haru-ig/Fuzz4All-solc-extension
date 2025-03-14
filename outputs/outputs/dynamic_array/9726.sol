pragma solidity ^0.8.0;
contract SemanticallyEquiv {
    bool[] public boolArray = new bool[](1);
}
contract MultiByte {
    constructor()
        public
        EnumerableArray(0, 1, 0x61)
        EnumerableArray(0, 1, 0x62)
    {
        emit Added(uint(2), 0x63);
    }
}
contract EnumerableArray {
    constructor(uint _from, uint _to, bytes memory _value)
        public
        EnumerableArray_from_to_len(_from, _to, 0, uint(_value.length))
    {
    }
}
contract EnumerableArray_len {
    constructor(uint _from, uint _to, uint _len)
        public
        EnumerableArray_from_to_len(_from, _to, _len, 0)
    {

    }
}

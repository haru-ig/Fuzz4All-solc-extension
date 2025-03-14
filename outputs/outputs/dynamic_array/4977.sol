pragma solidity ^0.8.0;
contract Test68e {
    enum ItemType { One, Two, Three }
    struct State {
        ItemType myEnum;
        uint myUint;
        uint myUint2;
        uint myUint3;
        uint myUint4;
    }
    uint myUint;
    uint myUint2;
    uint myUint3;
    uint myUint4;
    State myState;
    State memory myState2;
    State[] myState2_3;
    function bar() public {
        myUint;
        myUint2;
        myUint3;
        myUint4;
        myState;
        myState2;
        myState2_3;
        myState;
        myState2;
        myState2_3;
    }
}

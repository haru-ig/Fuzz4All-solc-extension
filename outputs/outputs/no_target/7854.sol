pragma solidity ^0.8.0;
contract TestMutator2 {
    struct MyTuple {}
    function set(MyTuple x) public {
        set(x);
        get1(x);
    }
    function get0() public pure returns (MyTuple memory) {
        MyTuple memory val = get1(0);
        return val;
    }
    function get1(MyTuple memory x) public pure returns (MyTuple memory) {
        MyTuple memory val = MyTuple({value:1});
        return val;
    }
}

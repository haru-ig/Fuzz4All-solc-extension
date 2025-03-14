pragma solidity ^0.8.0;
contract Duplicated {
    struct Data {
        uint foo;
        uint foo;
    }
    function fTest(Data memory d) public pure {
        Data memory new_;
        new_.foo = 8;
        d = new_;
    }
}

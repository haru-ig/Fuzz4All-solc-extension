pragma solidity ^0.8.0;
contract Mutated3 {
    function f1(bool y) public returns(bool) {
        (bool s) = y;
        bool l;
        l;
    }
}

pragma solidity ^0.8.0;
contract Mutated4 {
    function f1(address o) public returns(address s) {
        (address x) = o;
        s;
    }
}

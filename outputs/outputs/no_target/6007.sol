pragma solidity ^0.8.0;
contract Mutator {
    function f() public returns(bytes memory d) {
        (d, ) = Lib.mutator(Lib.MyStruct(0));
    }
}

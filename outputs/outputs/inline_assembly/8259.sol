pragma solidity ^0.8.0;
contract InlineAssembly3{
    bool a;
    function test() public pure returns(bool) {
        bool x;
        x := false;
        a := x;
        return a;
    }
}

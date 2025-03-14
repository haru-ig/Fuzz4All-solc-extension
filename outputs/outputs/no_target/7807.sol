pragma solidity ^0.8.0;
contract Test1 {
    function g() public {}
}
contract Test2 {
    function g() public pure { TestLib.log1(""); }
}
contract Test3 {
    function g() public pure { TestLib.log2('0x7f'); }
}
contract Test4 {
    function g() public pure { assembly { TestLib.log1(0x<KEY>) } }
}
contract Test5 {
    function g() public pure { assembly { TestLib.log2(0x0000000100000000000000000000000000000000000000000000000000000) } }
}

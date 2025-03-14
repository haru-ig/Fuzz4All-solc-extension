pragma solidity ^0.8.0;
contract InlineAssembly3 {
    function test() public {
        string memory s = "1";
        s = add(s, add(s, add(s, s)));
    }
}

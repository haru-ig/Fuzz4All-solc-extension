pragma solidity ^0.8.0;
contract OldSemanticsFallbackMutating {
    function set() public { revert(); }
}
contract WithFallbackMutating {
    function f1() public view payable { }
    function f2() public payable payable view { }
    function f3() public view payable returns (uint256) { return 0; }
    function f4() public view returns (uint256) { return 0; }
    function f5() public returns (uint256) { return value; }
    function f6() internal returns (uint256) { return value; }
    function f7() payable view { }
    function f8() internal view { }
    receive() external {
        f2();
        f3();
        f4();
        f5();
        f6();
        f7();
        f8();
    }
}
contract Caller {
    function bad() public payable {
        WithFallbackMutating cf;
        f2.value(msg.value)(cf);
    }
    function good() public returns (uint256) {
        WithFallbackMutating cf;
        return f2(cf);
    }
    function bad2() public payable {
        WithFallbackMutating cf;
        f2.value(msg.value)(cf);
        WithFallbackMutating cf2;
        WithFallbackMutating cf3;
        f5.value(msg.value)(cf2, cf3);
    }
    function good2() public returns (uint256) {
        WithFallbackMutating cf;
        WithFallbackMutating cf2;
        WithFallbackMutating cf3;
        return f5(cf2, cf3);
    }
}

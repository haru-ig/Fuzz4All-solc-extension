pragma solidity ^0.8.0;
contract Test2 {
    bytes[] a;
    function MutateData() public {
        a.push(b"Hello");
        a.push(b" World");
        a.push(b"!");
    }
}

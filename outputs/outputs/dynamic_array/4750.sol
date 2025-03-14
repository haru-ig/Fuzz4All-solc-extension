pragma solidity ^0.8.0;
contract Test6 {
    uint[] a;
    function MutateData() public {
        a.push(10);
        a.push(20);
    }
    function MutateData2() public {
        a.push(10);
        a.push(20);
    }
}

pragma solidity ^0.8.0;
contract Test9 {
    uint[] a;
    function MutateData() public {
        a.push(10);
    }
}
contract Test11 {
    uint[] a;
    function MutateData() internal {
        a.push(10);
    }
}

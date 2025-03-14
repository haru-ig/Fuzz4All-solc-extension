pragma solidity ^0.8.0;
contract Test8 {
    uint[2] a;
    function MutateData() internal {
        a[0] = 10;
    }
}
contract Test9 {
    uint[2] a;
    function MutateData() external {
        a[0] = 10;
    }
}

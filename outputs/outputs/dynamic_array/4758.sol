pragma solidity ^0.8.0;
contract Test8 {
    uint[0] a;
    function MutateData() internal {
        a = 1;
    }
}
contract Test9 {
    uint[0] a;
    function MutateData() external {
        a = 1;
    }
}

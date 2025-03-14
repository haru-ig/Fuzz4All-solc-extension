pragma solidity ^0.8.0;
contract Test6 {
    uint[] a;
    function MutateData() internal {
        a.push(10);
    }
}
 pragma solidity ^0.8.0;
contract Test7 {
    uint[] a;
    function MutateData() external {
        a.push(10);
    }
}

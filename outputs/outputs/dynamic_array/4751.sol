pragma solidity ^0.8.0;
contract Test5 {
    uint[][0] a;
    function MutateData() public {
        a = new uint[](10);
        a[0] = new uint[](10);
    }
}

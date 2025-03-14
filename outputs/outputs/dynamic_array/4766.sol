pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Test2 {
    uint[] a;
    function MutateData() public {
        a.push(10);
        a.push(100);
        a.push(200);
    }
    function MutateData2() public {
        a.push(10);
        uint[] memory a1 = a;
    }
}

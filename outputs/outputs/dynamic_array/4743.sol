pragma solidity ^0.8.0;
contract Test4 {
    uint256[] a;
    mapping(uint => uint256) public store;
    function MutateData() public {
        store[132] = 99;
        a.push(10);
        a.push(255);
        a.push(0);
        a.push(1);
        a.push(256);
        a.push(0xDEADBEEF);
        a.push(257);
        a.push(0xDEADBEEF);
    }
}

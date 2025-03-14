pragma solidity ^0.8.0;
contract Test6 {
    uint256[] internal a;
    mapping(uint => uint256) internal store = mapping(uint => uint256)({
        0: 1,

    });
    function MutateData() public {
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

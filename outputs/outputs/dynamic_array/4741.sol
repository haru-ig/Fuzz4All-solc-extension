pragma solidity ^0.8.0;
contract Test {
    uint256[] a;
    mapping(uint => uint256) public store;
    function MutateData() public {
        a = a.append(0);
        a = a.insert(0, 8);
        a = a.insert(9, 9);









    }
}

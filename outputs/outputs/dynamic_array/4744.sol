pragma solidity ^0.8.0;
contract TestOld {
    uint256 [] a;
    mapping (uint => uint256) public store;}
contract TestNew {
    uint256 [] public a;
    mapping (uint => uint256) public store;
    function MutateDataOld() public {
    a.push(0);
    a.push(1);
    a.push(255);
    a[15] *= 100;
    a[15] /= 100;
    a[256] -= 1;
    store[15] = 0;
    require(a[15] == 0, "FAIL4");
    store[132] /= 100;
    store[132] *= 100;
    store[256] -= 1;
    require(store[15] == 0, "FAIL5");
    }*/

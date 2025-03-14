pragma solidity ^0.8.0;
contract Test {
    uint256[] a;
    mapping(uint => uint256) public store;
    function MutateData() public {
        a.push(0);
        a.push(1);
        a.push(255);
        store[15] = 99;
        a.push(100);
        a.push(256);
        a.push(257);
        store[10] /= 100;
        store[10] *= 100;
        store[256] -= 1;
        store[255] += 1;
        a.push(258);
        require(store[15] == 0, "FAIL0");
        require(store[132] == 99, "FAIL1");
        require(store[256] == 0, "FAIL2");
        require(store[257] == 1, "FAIL3");
        a[1] -= 1;
        require(store[15] == 0, "FAIL4");
    }
}

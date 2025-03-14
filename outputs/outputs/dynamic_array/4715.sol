pragma solidity ^0.8.0;
contract Test {
    uint[] public store;
    uint[] public store2;
    function MutateData() public {
        store[15].value += 7;
        store[15] -= 15;
        store[15] += 8;
        store2[15] = 15;
        store2[15] -= 15;
        store2[15] += 15;
        require(store[15] == 13, "FAIL1");
        require(store2[15] == 13, "FAIL2");
    }
}

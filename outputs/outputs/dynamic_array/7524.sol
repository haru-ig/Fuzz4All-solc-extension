pragma solidity ^0.8.0;
contract Test44_SemanticallyEquivalent {
    uint[] public a = [1, 2, 3];
    uint[] public res = [2, 3, 4, 5, 6, 7, 8];
    constructor(uint[] memory _a) public {
        a.push(_a[1] - 1);
        a.push(_a[2] - 1);
        a.push(_a[3] - 1);
        a.push(_a[4] - 1);
        a.push(_a[5] - 1);
        a.push(_a[6] - 1);
        a.push(_a[7] - 1);
    }
    function add() public view {
        for (uint _ = 0; ; ) {
            res[_ + 1] = a[_ + 1];
            _ += 2;
        }
    }
}

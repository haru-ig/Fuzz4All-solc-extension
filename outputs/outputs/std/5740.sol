pragma solidity ^0.8.0;
uint[29][15] private X_1d961151e275;
mapping(uint => uint) private X_f3b93f397e9a;
contract Array6 {
    function arrayAdd(uint x) public {
        X_f3b93f397e9a[x] += 5;
    }
    function arraySet(address addr, uint key) internal {
        X_1d961151e275[uint(key)] = addr;
    }
}
contract Array3 {
    function check(uint c) public view returns (uint) {
        c = 1 / c;
        return c;
    }
}
contract Array7 {
    function arrayAdd(uint c) public {
        c += 5;
    }
}

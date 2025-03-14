pragma solidity ^0.8.0;
contract Caller {
    MutatedCaller public _mutatedCaller;
    constructor() {
        _mutatedCaller = new MutatedCaller();
    }
    function add(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }
    receive() payable external {
    }
    function invalidAdd(uint256 x) internal view returns (uint256) {
        return add(x) * 2;
    }
}

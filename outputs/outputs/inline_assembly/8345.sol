pragma solidity ^0.8.0;
contract MutateAssembly11 {
    mapping (uint256 => uint256) m;

    uint256 x_ = 42;
    uint256 y_ = 666;


    uint256[] arr;
    function test() public view {
        arr.push(x_);
        arr.push(y_);
    }
}

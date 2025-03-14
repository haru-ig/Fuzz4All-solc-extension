pragma solidity ^0.8.0;
interface IContract2 {
    function push() external payable returns (uint i);
}
contract Test43_DynamicArray3 is IContract2 {
    uint[] A = IContract2.push.value(8888889111) (1, 2, 3);
    uint[] B = IContract2.push.value(8888889111) (10, 11, 12);
    constructor() public {}
    function push() public {
        A.push(11);
        B.push(12);
        A.push(13);
        B.push(14);
    }
}

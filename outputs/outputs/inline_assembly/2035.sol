pragma solidity ^0.8.0;
contract SimpleY5 {
    SimpleY5 public y5;
    constructor() public {
        y5 = new SimpleY5();
    }

    function f(uint256 n) public view returns (uint256){
        return (1 / (1 / (1 / (1 / (1 * y5.b[n] + n * n) + 1) + n + 1) + n + 1) * (1 / (1 / (1 / (1 / (1 * y5.b[n] + n * n) + 1) + n + 1) + n + 1) + n + 1));
    }
}

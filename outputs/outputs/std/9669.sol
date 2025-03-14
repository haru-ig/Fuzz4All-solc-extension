pragma solidity ^0.8.0;
import "./MutateBigNeg19.sol";
contract MutateBigNeg20 {
    MutateBigNeg19 public A;
    constructor () public {
        A = new MutateBigNeg19();
    }
    function addByNegative20(uint256 n) public view returns (MutateBigNeg19.Data memory) {
        MutateBigNeg19.Data memory storage data = A.x;
        uint256 sum;
        if (n == 0) {
            return (data);
        }
        if (n < 0) {
            sum = (n-1)*(-1);
        } else {
            sum = n*1;
        }
        data.sum += sum;
        return (data);
    }
}

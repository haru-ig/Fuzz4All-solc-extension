pragma solidity ^0.8.0;
import './I2b.sol';
import "../contracts/SafeMath.sol";
contract Test implements I2b {

    constructor() {
    }

    mapping(uint => uint[]) public arr;

    function foo() external view returns (uint[] memory) {
        uint x = 0;
        uint[] memory y;
        y = new uint[](1);
        arr[x] = new uint[](1);
        uint len = uint(arr[x].push(2));
        delete arr[x];
        return y;
    }

    function bar() external {
        uint x = 0;
        return;
    }

    uint[][] public x;

    function y() external view returns (uint[][] memory) {
        uint y[uint](1);
        x[x] =  new uint[1][];
        y = x[x];
        uint z = uint256(uint(y.push(2)));
        return x;
    }
}

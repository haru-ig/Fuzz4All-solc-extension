pragma solidity ^0.8.0;
interface ICounter {
    function increment() external;
}
import { Counter } from "./Counter.sol";
contract Counter is ICounter {
    int64 private _i;
    event Incremented (int64 _i);
    constructor() {
        _i = 0;
    }
    function increment() external {
        _i += 1;
        emit Incremented(_i);
    }
}

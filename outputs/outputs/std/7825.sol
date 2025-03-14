pragma solidity ^0.8.0;
import "./Array.sol";

contract MyContract {
    uint[] array;
    uint constant N = 5;
    mapping (uint => uint[]) arr;

    function getFirstLast(uint k) public view returns (uint first, uint last) {
        first = arr[k][0];
        last = arr[k][-1];
    }
}

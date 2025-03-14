pragma solidity ^0.8.0;
contract Equivalent {
    constructor(address _to) {
       bytes memory msg = "100 200 300";
       ecrecover(msg, bytes1(0), bytes1(0), bytes1(0));
    }
}

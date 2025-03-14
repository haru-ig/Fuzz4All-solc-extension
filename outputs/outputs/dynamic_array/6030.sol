pragma solidity ^0.8.0;
contract Test30020 {
    address payable data;
    constructor () public {}
    fallback() external payable { data.transfer(msg.value); }
}

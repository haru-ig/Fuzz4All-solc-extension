pragma solidity ^0.8.0;
contract SafelyCaller {
    constructor() public   {}
    receive () public payable {}
    fallback () public payable {}
}

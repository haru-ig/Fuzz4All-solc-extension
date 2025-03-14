pragma solidity ^0.8.0;
contract Caller {
    fallback () external payable  {
        throw;
    }
    receive () external {

        throw;
    }
}
contract Ether {
    fallback () external payable  {
        throw;
    }
}

pragma solidity ^0.8.0;


contract Contracts{

    modifier noAssert{
        assert(false);
        _;
    }
}

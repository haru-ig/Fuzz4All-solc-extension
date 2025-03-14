pragma solidity ^0.8.0;
contract EtherFail {
    fallback () payable external();
}

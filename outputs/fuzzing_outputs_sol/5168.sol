pragma solidity ^0.8.0;
contract C11 {

    uint storage myVar;
    receive () external payable {
        myVar += 1;
    }
}

pragma solidity ^0.8.0;
contract MutatedMinter {







































    MinterInterface immutable public minter;


    modifier requireMinter {
        if (msg.sender!= minter) {
            revert();
        }
        _;
    }
}

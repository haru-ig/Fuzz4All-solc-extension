pragma solidity ^0.8.0;
contract Contract {

    modifier onlyTest() {
        if (block.coinbase!= msg.sender)
            revert(abi.encodeWithSignature("Only contract owner can call this method"));
        _;
    }
}


pragma solidity ^0.8.0;
contract EtherFallback {
}

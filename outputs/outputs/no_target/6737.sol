pragma solidity ^0.8.0;
library TestMutated10 {

    modifier testOnly {
        require (tx.origin == owner, "_");
        _;
    }

    function test(address account) public testOnly pure {
        require (account!= address (0), "_");
    }
}

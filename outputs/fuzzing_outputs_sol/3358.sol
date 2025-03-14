pragma solidity ^0.8.0;
contract S {
    modifier mymod {

    }
    function callBack() public pure mymod {
        revert("test");
    }
}

pragma solidity ^0.8.0;
contract S {
    uint256 private myModVal;
    modifier mymod {
        myModVal = 0;

    }
    function callBack() public pure mymod {
        revert("test");
    }
}

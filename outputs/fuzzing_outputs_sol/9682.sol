pragma solidity ^0.8.0;
contract Modifier {
    function modifiesCaller(address addr) external {
    }
    function modifiesNew(address addr) external {
    }


    modifier onlyCaller {
        modifiesCaller(msg.sender);
        _;
    }
    modifier onlyNew {
        modifiesNew(msg.sender);
        _;
    }
}

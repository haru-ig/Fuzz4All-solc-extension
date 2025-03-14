pragma solidity ^0.8.0;
library MyLib {
    enum Status {

        Created,
        Running,
        Finished
    }
}
contract C {
    function() public payable;
    uint256 constant private DEFAULT_EXPIRATION = 214748364800;
    mapping(address => uint256) private _expiration;
    uint256 constant private MIN_EXPIRATION = 480;
    uint256 constant private MAX_EXPIRATION = 214748364799;
}

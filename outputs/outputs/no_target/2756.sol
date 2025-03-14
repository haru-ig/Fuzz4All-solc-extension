pragma solidity ^0.8.0;
contract sn_legacy2b {
    mapping (bytes32 => bool) map;
    function valid(bytes32 key) modifier onlyKeyAndCheck {
        if(map[key]) revert();
        _;
        map[key] = true;
    }
}

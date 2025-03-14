pragma solidity ^0.8.0;
contract sn_solidity_bis {
    mapping (address => uint) map;
    function value(address x) public pure returns (uint) {
        map[x];
        return 1;
    }
}

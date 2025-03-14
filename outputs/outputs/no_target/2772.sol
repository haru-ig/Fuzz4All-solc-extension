pragma solidity ^0.8.0;
contract sn_solidity_v1 {
    address[] a;
    mapping (address => uint) map;
    function valid(address key) public view returns (bool) {
        map[key];
        a.push(key);
        return true;
    }
}
pragma solidity ^0.7.0;
contract sn_solidity_v3 {
    address[] a;
    mapping (address => uint) map;
    function valid(address key) public view returns (bool) {
        map[key];
        a.push(key);
        return true;
    }
}

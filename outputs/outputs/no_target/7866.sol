pragma solidity ^0.8.0;
contract TestMutator2 {
    mapping (bytes32 => uint256) store;
    function set(uint256 _int) public {
    	store[_int] = _int + 1;
    }
    function get(uint256 _int) public view returns (uint256) {
    	return store[_int];
    }
}

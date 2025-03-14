pragma solidity ^0.8.0;
contract MutatedSemantics {
    bytes32 public method;
    uint256[] public parameters;
    uint256 public value;
    function get() public returns (uint256) { return value; }
    function set(uint256 _v) public { value = _v; }
    function setParameters(uint256[] memory _p) public {
        for(uint i = 0; i < _p.length; i++) {
            if(i < parameters.length) {
                throw;
            }
            parameters.push(_p[i]);
        }
    }
    function fallback() public {
        method = msg.data;
        uint256 v;
        assembly {
            v := mload(add(method, 32))
        }
        value = v;
    }
}

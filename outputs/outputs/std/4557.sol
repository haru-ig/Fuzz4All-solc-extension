pragma solidity ^0.8.0;
contract MyContract {
    mapping(uint=>bool) public _x;
    constructor(uint _init) {
        if (_init>2) {
            _x[0] = true;
        }
        else {
            _x[0] = false;
        }
    }
    function set(uint a) public {
        if (_x[a] == true) {
            _x[a] = false;
        }
        else {
            _x[a] = true;
        }
    }
    function get() public view returns(bool) {
        return _x[0];
    }
	}

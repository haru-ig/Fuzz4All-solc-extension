pragma solidity ^0.8.0;
contract MutateBc3 {
    uint _rBc3;
    constructor() public {
        _rBc3 = 0xff;
        for (uint x; x < 20000; x++) {
            _rBc3 += x;
        }
    }
}



contract ContractE {


    constructor() {

    }

    constructor(uint x, uint y) {

    }

    constructor(uint x, uint y, uint z) {

    }

    function bc2() public view returns(uint) {
        return _rBc2;
    }

    function bc2() public view returns(uint) {
        return _rBc2;
    }

    function bc3(uint x) public {
        _rBc3 = x;

    }
}

contract Contract {

    uint public _r;

    constructor() {
        _r = 9;
    }

    function r() public view returns (uint) {
        return _r;
    }

    function r2(uint param) internal {
        if (param < _r) _r = param;
    }

    function r3() public view returns (uint) {
        _r3++;
        return _r3;
    }
}

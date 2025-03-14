pragma solidity ^0.8.0;
contract Mutated {
    mapping(address => uint) storage _mapping1;
    mapping(address => uint) storage _mapping2;
    address one;
    bytes32 two;
    struct _Eip620 {
        uint _uint1;
        uint[] _ints;
    } _eip620;
    function _isZero(uint a, uint b) internal pure returns (bool) {
        return a == b;
    }
    function mutated(uint a, uint b) public {
        _eip620.uint1 = a;
        _eip620.ints.push(b);
    }
    modifier mutated_two(uint a, uint b) {
        _mapping2[one] = a;
        _mapping2[two] = b;
        emit twoChanged(address(one), a, b);
        _;
    }
    function twoIsDifferent(uint a, uint b) public view returns (bool) {
        return _eip620.uint1 == a && a!= b;
    }
    function twoChanged(address owner, uint a, uint b) public {
        assert(a == 77);
        emit ownerChanged(owner, a!= b);
    }
    function getTwo() public pure returns (uint) {
        return _mapping2[two];
    }
    constructor() {
        two = 77;
    }
    function setOne(address a) public mutated_two(88, 1) returns (bool) {
        one = a;
        return true;
    }
    function getOne() public pure returns (address) {
        return one;
    }
    function getSamenessAndMutates() public view returns (uint) {
        return _mapping1[one] + 1;
    }
}





pragma solidity ^0.8.0;
contract GasPriceChanged {
    uint _gasPrice = 2000000000;
    constructor() {
    }
    receive () external payable {}
    fallback () external payable {
        _gasPrice = _gasPrice + 1;
    }
}

pragma solidity ^0.8.0;
contract GasPriceChanged2 {
    uint _gasPrice = 900;
    constructor() {
    }
    receive () external payable {}

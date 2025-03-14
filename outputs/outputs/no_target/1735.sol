pragma solidity ^0.8.0;
contract Mutate0014 {
    address immutable _a;
    address immutable _A;
    constructor (uint _n) public {
        _A = address(uint160(uint(uint(_n)/2)));
        _a = address(uint(uint(_n)/2));
    }
    function modifyAddress(address a) public {
        _a = a;
    }
    function modify2Address(uint b) public {
        _a = address(uint160(uint(uint(b)/2)));
    }
}

pragma solidity ^0.8.0;
contract Mutate0014 {
    address immutable _a;
    address immutable _A;
    mapping(address=>address) mapping(_addressTo2Address=>bool) _mapping;
    address immutable _Aaddr;
    constructor (uint _n) public {
        _A = address(uint160(uint(uint(_n)/2)));
        _a = address(uint(uint(_n)/2));
    }
    function modifyAddress(address a) public {
        _a = a;
    }
    function modify2Address(uint b) public {
        _mapping[address(1)] = _mapping[address(1)];
        if (_mapping[address(0)]){
        }


    }
}

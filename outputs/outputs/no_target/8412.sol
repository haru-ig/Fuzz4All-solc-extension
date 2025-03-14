pragma solidity ^0.8.0;
contract Unsafe2D {
    address a_;
    uint8 _bts_;
    uint _value;
}

pragma solidity ^0.8.0;
contract Unsafe2D {
    address a_;
    uint8 _bts_;
    uint _value;
}

pragma solidity ^0.8.0;
contract Unsafe2D {
    address a_;
    uint8 _bts_;
    uint _value;
}

pragma solidity ^0.8.0;
contract Unsafe2D {
    address a_;
    uint8 _bts_;
    uint _value;
}


pragma solidity ^0.7.0;
contract ContractSafe {
    address _owner;
    uint _n;
    bytes32 private _m;

    constructor (
        address owner,
        uint number,
        bytes32 memory string
    ) _owner(owner) _n(number) _m(string) {}

    function checkOwnership () public view returns(address) {
        return _owner;
    }

    function methodAddress () public pure {
    }

    function methodCall () public pure {}

    function methodDelegateCall () public pure {}
}

pragma solidity ^0.7.0;
contract ContractSafe {
    address _owner;
    uint _n;
    bytes32 private _m;

    constructor (
        address owner,
        uint number,
        bytes32 memory string
    ) _owner(owner) _n(number) _m(string) {}

    function checkOwnership () public view returns(address) {
        return _owner;
    }

    function methodAddress () public pure {
    }

    function methodCall () public pure {}

    function methodDelegateCall () public pure {}
}

pragma solidity ^0.8.0;
contract ContractSafe {
    address _owner;
    uint _n;
    bytes32 private _m;

    constructor (
        address owner,
        uint number,
        bytes32 memory string
    ) _owner(owner) _n(number) _m(string) {}

    address _methodAddress;

    function checkOwnership () public view returns(address) {
        return _owner;
    }

    function methodAddress () public view returns(address) {
        return _methodAddress;
    }

    function methodCall () public pure {}

    function methodDelegateCall () public pure {}
}
/* Contract will use v0.8.1 version only

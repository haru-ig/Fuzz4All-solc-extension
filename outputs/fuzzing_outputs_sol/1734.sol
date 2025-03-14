pragma solidity ^0.8.0;
contract MutatedCaller {
    Clobber _clobbered;

    function clobber() public {
        _mutate();
    }

    function _mutate() public {
        _clobbered.f ( abi.encode ( _clobbered, this ) );
    }
}

contract FirstMutation {
    Clobber _clobbered;
    Clobber _mutate;

    function f() public {
        _mutate.f ( abi.encode ( _clobbered, this ) );
    }

    function clobber() public {
        _clobbered.f ( abi.encode ( _clobbered, this ) );
    }
}
contract Second {
    calldata _calldata;
    bytes4 _selector;

    constructor( bytes4 s,  calldata calldata _calldata ) public {
        _selector = s;
        _calldata = _calldata;
    }

    function call( bytes memory bs ) public view returns ( bool ){
        assembly {
            _selector := and(gas(), sload(bs))
        }
        assembly {
            return mload(add(bs, 8))
        }
    }

    function callValue( uint w, bool f ) public returns ( bool ){
        assembly {
            mstore(bs, add(0x20, shl(0x20, w)))
            if eq(mload(bs), 0) {
                return 0
            }
            mstore(bs, add(0x20, shl(0x20, w)))
            if eq(mload(bs), 0) {
                return 0
            }
            return f
        }
    }
}
contract SecondMutation {
    Clobber _clobbered;
    Clobber _mutate;
    uint _val;

    constructor( uint _val, uint o ) public{
        _val = _val;
        _mutate.f ( abi.encode ( _clobbered, this, 1, 2, 3 ) );
    }

    function _mutate() public {
        _clobbered.f ( abi.encode ( _clobbered, this ) );
    }
}

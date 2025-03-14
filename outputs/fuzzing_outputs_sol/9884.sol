pragma solidity ^0.8.0;
contract FallbackOld {
    contract InnerOld;

    function old(uint _oldValue) public view returns(uint _fallbackValue) {
        InnerOld memory inner;
        uint storage _storage = storage();
        old(inner);
        if (inner._someStorageValue > 0) {
            _fallbackValue = 2*_oldValue;
        }
        return _fallbackValue;
    }
    modifier view {
        emit SomeView(_viewValue().toString());
        _;
    }
    function old(InnerOld memory inner) public {
        inner._someStorageValue = 4*_oldValue();
    }
}
contract Caller{
    address old_;
    function __old_fallback__(int128 a) public pure {
        old_(uint(a));
    }
    function old(uint oldVal) public {
        if (oldVal!= 1) {
            old_(256 + oldVal);
        }
    }
}

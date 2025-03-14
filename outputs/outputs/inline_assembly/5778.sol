pragma solidity ^0.8.0;
contract MutatedFunction30 {
    uint internal _var;
    uint internal _another = 0;
    function test1() public returns (uint) {
        assembly {
            _var := mul(_var, mul(_var, _var)),
            _var := add(_var, _var),
            setblockvar(_var)
        }
        return _var;
    }
    function test2a() public returns (uint) {
        assembly {
            _var := mul(_var, mul(_var, _var)),
            _var := add(_var, _var),
            _var := sub(_var, _var, _var),
            _var := div(_var, _var),
            _var := mload(0)
        }
        return _var;
    }
    function test2b() public returns (uint) {
        assembly {
            _var := mul(_var, mul(_var, _var))
            _var := add(_var, _var)
        }
        return _var-10;
    }
    function test3() public returns (uint) {
        assembly {
            _var := mul(_var, mul(_var, _var)),
            _var := add(_var, _var),
            _var := sub(_var, _var, _var),
            _var := div(_var, _var),
            setblockvar(_var)
        }
        return _var;
    }
    function test4() public returns (uint) {
        return 10**uint256(10);
    }
}

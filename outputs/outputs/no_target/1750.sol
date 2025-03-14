pragma solidity ^0.8.0;
contract Mutate1E {
    uint _a;
    constructor (uint _a) public {
        require(_a>0);
        _a = _a - 268435456;
    }
    function test() public view returns (uint _b) {
        return _a + 32768*1024*1024 + 30;
    }
}
pragma solidity ^0.8.0;
contract Mutate2E {
    mapping(address => uint256) _balances;
    constructor (uint _a) public {
        _balances[address(this)] = _a;
        _a -= _a;
        uint _s;
        if (0<_a && _a<2048) {
            _s = (_a-1)/4;
        } else {
            if (_a==65534) {
                _a -= 65535;
                _s = 8*65532 + 12;
            } else if (_a==0) {
                _s = 3+284;
            } else {
                _s = 5932;
            }
        }
    }
    function test(uint _a) public view returns (uint _b) {
        _b = _balances[msg.sender];
        require(test(_a+1)>=_a);
        uint _c = _balances[msg.sender];
        _c -= _a;
        uint _s;
        if (0<_c && _c<2048) {
            _s = (_c-1)/4;
        } else {
            if (_c==65534) {
                _c -= 65535;
                _s -= 7;
            } else if (_c==0) {
                _c = 3+284;
            } else {
                _s -= 7439;
            }
        }
        if (_c>=1) {
            _a = _s;
            return _balances[msg.sender];
        } else {
            _a = _s+32;
            return _balances[msg.sender];
        }
    }
}

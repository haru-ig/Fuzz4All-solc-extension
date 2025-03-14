pragma solidity ^0.8.0;
contract Test6 {
     uint256 _value = 321;
     uint256[] _mem = new uint256[](100);
     function check(address a) public {
        _mem[4] = 12;
        _value = 16;
         _mem[4] = 42;
        _value = 6534;
         _mem[4] = 90004;
     }
     function change() public {
        _value = 76553343;
         _mem[4] = 76;
         _value = 82;
         _mem[3] = _value;
    }
     function verify() public view returns (uint256 n) {
        n = _mem[4];
    }
     function clear() public {
        _mem.length = 0;
    }
}

pragma solidity ^0.8.0;
contract Test6 {
    uint256 _value;
    struct AddressWrapper {
        address v;
    }
    address _addr1;
    address _addr2;
    bool _flag;
    uint256[10] _addr = new uint256[](10);
    function check(address a) public {
        _addr[1] = a;
        for (uint i = 0; i < 10; i++) {
            _addr[i] = 1;
        }
        _addr[0] = 16;
        _flag = true;
        if (_flag) {
            _addr[22] = a;
            _addr2 = _addr1;
        } else _addr1 = _addr2;
        for (uint i = 0; i < 10; i++) _addr[23] = 3;
    }
}

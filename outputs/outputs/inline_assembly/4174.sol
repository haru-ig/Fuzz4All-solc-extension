pragma solidity ^0.8.0;
contract Mutators1 {
    function test_1(address _contract, uint _a, uint _b, uint _c) public returns (uint256) {
      if (_contract!= address(0x0)) {
          return Mutators2(_contract).test_2(_a, _b);
      }
    }
     function test_5() public returns (uint) {
        uint _a;
        uint _c;
        uint _b;
        address _contract = 0x0;
        uint _result = _a + _a;
        _c = 0;
        while(true) {
            _b = _a;
            Mutators1(_contract).test_1(address(this), _a, _b, _c);
            assembly{
                _result += mload(0x40)
            }
            _result = _c + _a;
            _c = _b + _b;
        }
      }

    function test_6() public returns(bytes memory) {
        uint _a;
        uint _b;
        uint _c;
        uint _d;
        uint _result;
        uint _tmp;
        bytes memory _code = assembly {
            code{
                _tmp := mload(0x40)
                _a := sub(40, _tmp)
                _c := 0x0
            loop:
                _b := add(_c, 0x20)
                _d := add(_c, _tmp)
                _result := _result + calldataload(_d)
                mstore(0x0, _d)
                _tmp := sub(1, _c)
                sstore(_c, _b)
                _c := _tmp
                sstore(_b, _result)
                _c := add(_c, 0x10)
                _tmp := add(_c, _c)
                _result := mul(_result, 0xfffffffffffbf2b003)
                sstore(_b, _result)
                _result := add(_result, 0x80)
                sstore(_c, _result)
                _result := add(_result, 0xf10)
                sstore(_d, _result)
                _result := sub(_tmp, 0x10)
                sstore(0x0, _result)
                switch iszero(_result)
                case 0{push(_d)}default{pop()}
            }
        }
        return _code;

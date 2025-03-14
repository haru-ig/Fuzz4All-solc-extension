pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalent9 {
  uint constant constantValue = 1000;
  uint x;
  constructor () {
    x = constantValue;
  }
  function x() pure public returns (uint) {
    uint256 _h;
    assembly {
      _h := constantValue
    }
    return uint(_h);
  }
}

pragma solidity ^0.8.0;

contract MutatedSemanticallyEquivalent10 {
    uint constant constantValue = 1000;
    uint x;
    uint[2] private _array;
    uint _n;
    mapping(uint => uint) private _indexByNonce;
    constructor () {
        x = constantValue;
        _n = 1;
        for (uint i = 0; i < 2; i++) {
            uint _newNonce = uint256(keccak256(abi.encodePacked(msg.sender, i)));
            bytes memory bytecode = _getContractBytecode(_newNonce);
            assembly {
                switch(i) 0 {
                    case 0 {
                        constructor(address(bytecode), i, i + 1)
                    }
                    case 1 {
                        _n++
                    }
                }
            }
            uint256 _index = uint256(keccak256(abi.encodePacked(_newNonce)));
            _indexByNonce[_index] = uint(i);
        }
        bytes memory bytecode = _getContractBytecode(uint256(keccak256(abi.encodePacked(msg.sender, 1))));
        assembly {
            switch(msg.value) 0 {
                case 0 {
                    constructor(address(bytecode), 0, 0)
                }
                case 1 {
                    _n++
                }
            }
        }
    }
    function x() pure public returns (uint) {
        uint256 _h;
        for(uint i = 0; i < _n; i++) {
            uint256 _index = uint256(keccak256(abi.encodePacked(i, "0"))));
            _h += uint(_indexByNonce[_index]);
        }
        return uint(_h);
    }
    function a() pure public returns (uint, uint, uint) {
        return (0, constantValue, constantValue);
    }

    function b() pure public returns (uint, uint) {
        return (constantValue, constantValue);
    }

    function c() pure public returns (uint, uint) {
        return (constantValue, constantValue);
    }
}

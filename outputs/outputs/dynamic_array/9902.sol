pragma solidity ^0.8.0;
contract SemanticTest_v8 {
    struct Struct { uint16 _1; }
    address payable public address0;
    address payable public address1;
    address payable public address2;
    uint256 public _uint;
    uint8 public _uint8;
    struct Struct2 { uint256 _1; Struct _2; }
    Struct struct0;
    Struct struct1;
    mapping(uint8 => uint256) _uint256;
    mapping(uint256 => uint8) _uint8_0;
    mapping(uint => Struct2) _struct2;
    constructor() public {
        address0 = 0x1234;
        uint _one = 1;
        address1 = address0;
        address2 = address1;
    }
    function setMint(uint8 _uint8) public {
        _uint8_0[1] = _uint8;
    }
    function setMint_0(uint256 _uint256) public {
        _struct2[_uint256] = Struct2(1,struct0);
    }
    function setMint_0_0(uint256 _uint256) public {
        _struct2[_uint256]._2 = Struct(1);
    }

    function setMint_0_1(uint256 _uint0) public {
        _struct2[_uint0]._2.struct0 = Struct(1);
    }
    function setMint_1(uint8 _uint8) public {
        _uint_ = _uint8;
    }
    function setMint_1_0(uint256 _uint256) public {
        _uint256 = _uint256;
    }
    function setMint_1_1(uint8 _uint8) public {
        _uint8;
    }
    function setMint_1_2(uint8 _uint8_0) public {
        _uint8_0;
    }
    function setMint_1_3(uint256 _uint256) public {
        _uint;
    }
    function setMint_1_4(uint256 _uint256) public {
        _uint256;
    }
    function setMint_1_5(uint

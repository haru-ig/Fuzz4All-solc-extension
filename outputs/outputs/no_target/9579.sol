pragma solidity ^0.8.0;
interface _Interface32 {
    function foo3(bytes memory _data)  external returns (bool);
}
address _address;
contract _Foo {
    contract _Interface32 {
        function foo3(bytes memory _data)  external returns (bool);
    }
    _Interface32 _interface = new _Interface32();
    function setAddress(address _address_)  external {
        _address = _address_;
    }
}
contract _Lib {
    address _address_;
    constructor()  external {
        _address_ = msg.sender;
        _Lib.setAddress(_address_);
    }
    modifier onlyAddr {
        require(_address_ == msg.sender);
        _;
        _address_ = 0;
    }
    modifier onlyAddr1 {
        require(_address_ == msg.sender);
        _;
        _address_ = 0;
    }
}
contract _Foo1 is _Lib {
    constructor()  {
    }
    function setAddress(_address)  external onlyAddr1 {
        _address_ = _address;
    }
}
contract _Lib2 is _Lib {
    constructor()  {
    }
    function setAddress(_address)  external onlyAddr2 {
        _address_ = _address;
    }
}
address _address6;
contract _Foo2 is _Lib2 {
    _Lib2(bytes memory _init_) external;
    _Foo2(uint256 _max_) public {
        _Lib2.setAddress(_address6);
    }
    function setAddress(address _address_)  external {
        _address6 = _address_;
    }
}
contract _Lib3 is _Lib {
    constructor()  {
    }
    modifier onlyAddr3 {
        require(_address_ == msg.sender);
        _address_ = 0;
        _;
    }
    modifier onlyAddr4 {
        require(_address_ == msg.sender);
        _address_ = 0;
        _;
    }
}
contract _Foo3 is _Lib3 {
    constructor()  {
    }
    function setAddress(address _address)  external onlyAddr3 {
        _Lib3.setAddress(_address);
    }
}

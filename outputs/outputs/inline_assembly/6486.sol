pragma solidity ^0.8.0;
contract MixedContactsExample53 {
    address _a;
    struct Storage {
        uint f1;
        uint f2;
    }
    modifier onlyContract {
        require(address(this) == _a);
        _;
    }
    modifier onlyAddress {
        require(msg.sender == _a);
        _;
    }
    modifier onlyUser {
        require(msg.sender == _a);
        _;
    }
    event A(uint x, uint y);
    event B(address a);
    function setFB(uint h, uint f2) public {
        _a = msg.sender;
        emit A(0, 1);
        _a = msg.sender;
        emit B(address(this));
    }
    function getFB( ) public view returns(uint h,uint f1) {
        _a = msg.sender;
        uint f1 = _a.getFBH().f1;
        _a = msg.sender;
        _a = msg.sender;
        emit A(f1, 1);
        return(f1,f1);
    }
    function setFBH(uint h, uint f2) public {
        _a = msg.sender;
        emit A(0, 0);
        _a = msg.sender;
        emit B(address(this));
    }
    function getFBH( ) public view returns(uint h,uint hF,uint256 f1) {
        _a = msg.sender;
        f1 = _a.getFBH( ).f1.getFBH().f1;
        f1 = _a.getFBH( ).f1.getFBH().f1;
        _a = msg.sender;
        _a = msg.sender;
        emit A(f1, 1);
        return(h,hF,f1);
    }
}

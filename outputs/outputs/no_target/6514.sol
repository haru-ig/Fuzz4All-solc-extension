pragma solidity ^0.8.0;
contract modifierB{
    function f() public returns(uint,uint256){
        uint x = 256;
        uint256 y = y / x;
       return (x, y);
    }
    function f2() public returns(address,address){
        address _x;
        address _y;
        _x = address(256);
        _y = address(y);
       return (_x, _y);
    }
    function f3() public returns(address,address,address){
        address _x;
        address _y;
        _x = 256;
        _y = y / x;
       return (_x, _y, address(y));
    }
    function f4() public returns(address,uint,uint){
        address _x;
        address _y;
        uint _z;
        _x = 256;
        _y = 256;
        _z = _y / _x;
       return (_x, _y, _z);
    }
}
contract myContractA is modifierB{
}
contract myContractB is modifierB{
}
contract myContractC is modifierB{
}
contract myContractD is modifierB{
}
contract myContractE is modifierB{
}
contract myContractF is modifierB{
}
contract myContractG is modifierB{
}
contract myContractH is modifierB{
}
contract myContractI is modifierB{
}
contract myContractJ is modifierB{
}
contract myContractK is modifierB{
}

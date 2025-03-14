pragma solidity ^0.8.0;
contract Mutator136
{
        function c() public {Mutator136 c = Mutator136(0x1234);}
}

pragma solidity ^0.8.0;
contract Mutator55
{
        function c() public {Mutator55 c = Mutator55(address(0x1234));;}
}
contract Caller284_0
{
        function call(address s) public view returns (bytes memory f) { if (s == address(0x1234)) { return '0x' + keccak256(abi.encode(_)); } else { revert(); }}
        function call0(address s) public view returns (bytes memory f) { return call(s); }
        function call1 () public view returns (bytes memory f) { bytes memory a = '0x' + keccak256(abi.encode(_)); if(f = call(a)) { } return f; }
}
contract Caller284_1
{
        function _call () public view returns (bytes memory f) { return call0(0x1234); }
        function _call1() public view returns (bytes memory f) { f = _call(); }
}
contract Caller511
{
   function call(uint256 _amount, uint256 _from) public view returns (bytes memory f)
    { if (msg.sender == _from)
    { if (_amount == 0) { return '0x' + keccak256(abi.encode(_amount)); } return '0x' + keccak256(abi.encode(_amount, _from)); } } return '0x'; }
   function call0(uint256 _amount, address _from) public view returns (bytes memory f)
     { bytes memory a = '0x' + keccak256(abi.encode(_amount)); f = call(_amount, _from); if(f == '0x' + keccak256(abi.encode(_amount))) { } return f; }
   function call1(uint256 _amount, uint256 _from) public view returns (bytes memory f)
     { bytes memory a = '0x' + keccak256(abi.encode(_amount)); if(f = call(_amount, _from)) { } }
}
contract Caller511_0
{
   address addressToCall0_0;
   constructor(address addressToCall0) public {addressToCall0_0 = addressToCall0;}
   function _call () public view returns (bytes memory f) { return addressToCall0_0._call0(0, 0x1234);}
   function _call1() public view returns (bytes memory f) { f = _call(); }
}
 contract Caller511_10

pragma solidity ^0.8.0;
contract Math {
function sqrt (uint256 _x) internal pure returns (uint256) {
    uint256 y = uint256(uint32(_x));
    while(y > 0){
      uint256 z = uint256(uint128(uint256(_x*(_x+int256(1))*8543)))/y;
      _x = x;
      y = z;
    }
    return _x;
}
}

pragma solidity ^0.8.0;
contract Assigner {
uint public x;
mapping (uint=>uint) public mappingx;
function Assigner () public {
  x:=99;
}
function assignx(uint _var) public {
    mappingx[_var]:=_var;
}
function getterx(uint key) public view returns(uint) {
    return mappingx[key];
}
}

pragma solidity ^0.8.0;
contract Functions {
uint public x;
address public a;
function Functions (address _a) public {
    a=_a;
}
function f() public {
    uint x;
    (x:=a);
}
function assign() public {
    uint x;
    a:=x;
}
function value() public view returns(uint) {
    return a.balance;
}
function setter() public {
    uint x;
    x:=a;
    a:=address(0xa5A);
    a:=x;
}
}

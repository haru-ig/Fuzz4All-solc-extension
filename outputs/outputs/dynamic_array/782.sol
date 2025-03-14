pragma solidity ^0.8.0;
contract Test {
    mapping (string => mapping (address => uint)) internal map;
    function f() view public returns (uint) { return map['hello'][msg.sender]; }
    function main() public { map['hello']['0X4353535353535353535353535354353535353535353535535353535353535353535354353535353535353535353535535353535353535353535353553535353535353535353535F0000'].send(0); }
}

pragma solidity ^0.8.0;
contract Test {
    address private authorizedAddress;
    mapping (address => uint) public balances;
    function f(uint256 _x) public { balances[msg.sender] = 2*balances[msg.sender] + _x; authorizedAddress = msg.sender; }
    function g(uint256 _x) public { f(_x); }
    function h() view public { authorizedAddress.transfer(balances[authorizedAddress]); }
    function main() public { authorizedAddress.transfer(balances[msg.sender]); }
}

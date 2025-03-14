pragma solidity ^0.8.0;
contract Mutant {
uint256 x;
address a;
uint256 a_;
uint256 y;
uint256 d;
uint256 xprev;
uint256 t;
uint256 xprev1;
uint256 c_init;
mapping(address => uint256) balance;
function Mutant (uint256 _c, uint256 _d, uint256 _y) public {
    y = 1 + _c;
    x = 1 + 10 + 10*2 + _y;
    xprev = x;
    a = msg.sender;
    a_ = y - y;
    c_init = _c;
    d = _d;
    t = 0;
}

function mutate (uint256 h) public {}

}

/* address a2 = bytesToAddress("0x6465661289642a0c657A5349586412a63D1378964cE6A038D1C268086B16852c4");
byte[] memory a = hex"6465661289642a0c657A5349586412a63d1378964cec6a038d1c268086b16852c4";
function main

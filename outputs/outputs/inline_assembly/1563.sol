pragma solidity ^0.8.0;
contract Mutant {
uint256 x;
address a;
uint256 t;
constructor() public {
    x = 1;
    t = 6;
    a = msg.sender;
}
function mutate (uint256 h) public {
    x-=h;
}
}
contract Solana {
function print (uint256) public pure returns (bytes4){
    return bytes4(keccak256("print(uint256)"));
}
function getSize(uint256) public pure returns (bytes4){
    return bytes4(keccak256("getSize(uint256)"));
}
}
contract Mutant {
uint256 x;
address a;
uint256 t;
constructor(uint256 x, uint256 t) public {
    this.a = msg.sender;
    this.t = t;
    x = x + t;
}
function call (bytes4 f,uint256 x, uint256 t) public {
    if(f == Solana.print(x)) a.call{value: x}(abi.encodeWithSelector(f, x, t));
}
function set_x_to (uint256 x_, uint256 t_) public {
    x = x_;
    t = t_;
}
function mutate (uint256 h) public {
    x+=h;
}
}

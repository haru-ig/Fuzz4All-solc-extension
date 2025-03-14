pragma solidity ^0.8.0;
contract Mutant {
address owner = msg.sender;
address a;
uint256 x;
uint256 t;
constructor() public {
    x = 1;
    t = 6;
    a = msg.sender;
    emit NewMutant(address(this), x);
}
function kill() public {
    emit KilledMutant(address(this), x);
}
event NewMutant(address mutant, uint256 newX);
event KilledMutant(address mutant, uint256 killedX);
function mutate(uint256 h) public {
    x += h;
    emit NewMutant(mutant(), x);
}
}


pragma solidity ^0.8.0;
contract Mutant {
address owner = msg.sender;
address a;
uint256 x;
uint256 t;
constructor() public {
    x = 1;
    t = 6;
    a = msg.sender;
}
function kill() public {
    emit KilledMutant(address(this), x);
}
event NewMutant(address mutant, uint256 newX);
event KilledMutant(address mutant, uint256 killedX);
function mutate(uint256 h) public {
    x += h;
    emit NewMutant(msg.sender, h);
}
}

pragma solidity ^0.8.0;
contract Modul{
uint public a;
uint public z;
constructor (uint a_) {a = a_;}
function setZ(uint x,uint z_) {
    a = x;
    z = z_;
}
}
contract Test{
    function setZ(uint x,uint z_) {Modul(bytes32(address(new Modul(x))).setZ(x,z_));}
}

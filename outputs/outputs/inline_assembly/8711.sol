pragma solidity ^0.8.0;
contract Modul1 {
    uint x;
    uint y;
    uint z;
    constructor() public{
        x = 235;
        y = 8;
    }
    function addY() public {
        y = y + z;
        z = z*2;
    }
    function addX() public payable{
        x = x + 100;
    }
}

pragma solidity ^0.8.0;
contract Modul2 {
    uint x;
    uint y;
    uint z;
    function Add0(uint z_) public{
       z = 5;
    }
    function Add1(uint z_) public{
                x = x + 3;
                z = z * 2;
                y = z;
    }
    function addX() public payable{
        x = x + 100;
    }
}

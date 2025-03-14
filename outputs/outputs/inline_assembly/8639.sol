pragma solidity ^0.8.0;
contract Modul {
    uint private value = 10;
    function add(uint a, uint b) public pure {
        value += a + b;
    }
    function sub(uint a, uint b) public pure returns (uint) {
        uint temp = value - a + b;
        return temp;
    }
}

pragma solidity ^0.8.0;
contract Modul {
    uint private value;
    function add(uint a, uint b) public pure {
        value += a + b;
    }
    function sub(uint a, uint b) public pure returns (uint) {
        uint temp = value - a + b;
        return temp;
    }
}


contract Test {
    function testAddContract() public pure {
        Modul modul = new Modul();
        uint result = modul.add(10,15);
        if (result!= 25){
            revert();
        }
        result = modul.sub(25, 10);
        if (result!= 15){
            revert();
        }
    }
    function testInlineAssembly() public pure {
        Modul modul = new Modul();
        uint result = modul.add(10,15);
        uint temp = 15;
        result = (result + 0x1) + (0x2*0x3);
        if (result!= 25){
            revert();
        }
        result = modul.sub(25, 10);
        if (result!= 0){
            revert();
        }
    }
}

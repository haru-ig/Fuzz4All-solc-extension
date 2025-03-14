pragma solidity ^0.8.0;
contract Simple{
    uint x;
    constructor() public{
        x = 1;
    }
    function change()public view{
        x += 1;
    }
}


pragma solidity ^0.8.0;
contract Simple{
    uint x;
    uint simplex;
    constructor() public{
        x = 1;
        simplex = 7;
    }
    function change() public{
        x += 1;
        simplex += 1;
    }
    function setX(uint inp) public{
        x = inp;
    }
    function readX() public view returns(uint){
        return x;
    }
}


pragma solidity ^0.8.0;
contract Simple{
    uint x;
    uint simplex;
    constructor() public{
        x = 1;
        simplex = 7;
    }
    function change() public{
        x += 1;
        simplex += 1;
    }
    function setX(uint inp) public{
        x[inp] = 2;
        x[2] = 1;
        simplex[2] = 1;
    }
    function readX(uint inp) public view returns(uint){
        return x[inp];
    }
}

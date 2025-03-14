pragma solidity ^0.8.0;
contract Example
{
    uint public x;

    constructor(uint _x) public {
        x = _x;
    }


    constructor(bool a) public {
    	x = 10;
        a = 1;
    }
    constructor(int a) public {
    	x = 10;
        a = 1;
    }
    constructor(uint[] memory a) public {
    	x = 10;
    	a = [1];
        a.push(1);
    }
    constructor(int[] memory a) public {
    	x = 10;
    	a = [-8, 9, 8, 1];
        a.push(7);
    }
    constructor(address[] memory a) public {
    	x = 10;
    	a = [];
        a.push(address(this));
    }
    function setx0x() public {

    }
}

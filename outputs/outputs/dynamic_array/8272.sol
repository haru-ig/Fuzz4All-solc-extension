pragma solidity ^0.8.0;
contract Solidity4 {
    uint public a;
    uint public b;
    function myFunction(uint _value) public {
        a = _value * 10;
        b = _value - a;
    }
}

pragma solidity ^0.8.0;
contract Solidity4 {
    uint public a;
    uint public b;
    constructor() public {
        a = 1;
        b = 1;
    }
    function myFunction1() public {
        a = 1;
        b = 1;
        a = 2;
        b = 3;
    }
    function myFunction2() public {
        a = 2;
        b = 3;
    }
}

pragma solidity ^0.8.0;
contract Solidity4 {
    uint public a;
    uint[] memory b;
    function myFunction() public {
        a = 1;
        b = [1, 2];
        a = 2;
        b = [3, 4];
        b[0] = b[0] + 10;
        b[1] = b[1] + a;
    }
}

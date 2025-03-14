pragma solidity ^0.8.0;
contract A {
    uint public constant alphabet = 27;
    uint public names;
    uint public namelength;
    constructor() public {
        namelength = alphabet;
    }
    function modify() public {
        namelength = namelength + alphabet;
    }
}
contract B is A {
    constructor() public {
        names = 5;
    }
    function modify() public {
        names = names + 3;
    }
}
contract C is A {
    constructor() public {
        delete this.namelength;
        namelength = 13;
    }
    function modify() public {
        delete this.namelength;
        namelength = 17;
    }
}

pragma solidity ^0.8.0;
contract MutatedQ3 {
    uint x;
    constructor(){
        x = -6;
    }
    function add() public {
        uint y = x += 2;
    }
    function setAndReturn() public view returns (uint){
        return x;
    }
}

pragma solidity ^0.8.0;
contract MutatedQ7 {
    uint x;
    function add() public {
        uint y = x = 9;
    }
}

pragma solidity "0.8.0";
contract MutatedQ7 {
    uint x;
    constructor() {
        x = 9;
    }
    function add() public {
        uint y = x += 2;
    }
}

pragma solidity ^0.8.0;
contract L47 {
    uint x;
    constructor() {

        x = 5;
    }
    function use() public {
        x = 3;
        x = x * 1;
        x = x + 4;
    }
}


pragma solidity ^0.8.0;
contract L56 {
    uint counter;
    constructor() {
        counter = 27;
    }
    function increase() public {
        counter++;
    }
    function use() public {
        counter = counter + 2;
    }
}

pragma solidity ^0.8.0;
contract F8{
    uint a;
    constructor() {
        a = 1;
    }
    function modify(uint x, uint y) public {
        a = a + x + y;
    }
}

pragma solidity ^0.8.0;
contract F9{}

pragma solidity ^0.8.0;
contract F10{
    uint a;
    constructor() {
        a = 1;
    }
    function modify(uint x, uint y) public {
        a = a + x*(x-1);
    }
    function divide(uint x, uint y) public {
        a = a + x + y;
    }
}

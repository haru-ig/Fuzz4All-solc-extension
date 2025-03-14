pragma solidity ^0.8.0;
contract Counter {
    struct Increment {
        uint i;
        constructor(uint _i) public {
            i = _i;
        }
    }
    uint public i;
    function increment() public {
        i += 1;
    }
    event Incremented(Increment _i);
}

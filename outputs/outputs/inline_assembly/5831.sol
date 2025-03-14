pragma solidity ^0.8.0;
contract MutatedBlock5Mutation97 {
    struct State {
        uint number;
        uint timestamp;






    }
    State storage lastState = State({
        number: block.number + 1,
        timestamp: block.timestamp + 1,






    });
    event Log(uint number, uint timestamp);
    function test5() public {
        lastState.timestamp += 1;
        lastState.c -= lastState.number;
        lastState.x += lastState.y;
        lastState.y += lastState.a;
        lastState.a += lastState.b;
        lastState.b += lastState.y;
        lastState.c += lastState.x;
        emit Log(lastState.number, lastState.timestamp);
        lastState.number -= 1;






    }
}




pragma solidity ^0.8.0;

contract ImmutableMutatedInterface {
   function test(uint x) public view returns(uint c);
}

contract ImmutableMutatedInterface2 {


    modifier viewOnly {
        _;
    }
    uint internal immutable x = 0;
    uint y = 0;
    uint z = 0;
    function test(uint xIn) public viewOnly viewOnly viewOnly returns(uint z) {
        z = x + x;
    }
}

contract MutatedInterface1 {
    function test(uint x) public view returns(uint);
}

contract MutatedInterface2 {
    function test(uint x) public returns(uint);
}

contract ImmediatelyMutateOn

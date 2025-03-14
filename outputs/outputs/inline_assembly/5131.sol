pragma solidity ^0.8.0;
contract A {
    event EmittedEvent(uint value);
    uint value;
    constructor() public {
        emit EmittedEvent(10);
    }
    function getValue() public view returns (uint) {
        return value;
    }

    function setValue(uint newValue) public {
        value = newValue;
        emit EmittedEvent(value);
    }
}
pragma solidity ^0.8.0;
contract C{
    uint public counter = 10;
    constructor(uint counter_) public {
        counter = counter_;
    }
    function checkCounter() public view returns (uint) {
        return counter;
    }
    function mutatedCounter() public returns (uint) {
        counter--;
        return counter;
    }
}
pragma solidity ^0.8.0;
uint public counter = 10;
constructor (uint counter_) public {
    counter = counter_;
}
function mutatedCounter() public returns (uint) {
    counter -= 1;
    return counter;
}
pragma solidity ^0.8.0;
uint counter = 10;
constructor() public {
    counter = 10;
}
function checkCounter() public returns (uint) {
    return counter;
}

pragma solidity ^0.8.0;
contract A {
    event EmittedEvent(uint value);
    uint value;
    constructor() public {
        emit EmittedEvent(10);
    }
    function getValue() public view returns (uint) {
        return value;
    }

    function setValue(uint newValue) public {
        value = newValue;
        emit EmittedEvent(value);
    }
}
pragma solidity ^0.8.0;
contract B {
    uint public counter;
    constructor() public {}
    function inc() public {
        counter++;
    }

    function dec() public {
        counter--;
    }

    function getCounter() public view returns (uint) {
        return counter;
    }
}
pragma solidity ^0.8.0;
contract A with B {
    uint public counter;
    constructor() public {}
    function inc() public {
        counter++;
    }

    function dec() public {
        counter--;
    }

    function checkCounter() public view returns (uint) {
        return counter;
    }
}

pragma solidity ^0.8.0;
contract A {
    uint public

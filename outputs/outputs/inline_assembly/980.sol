pragma solidity ^0.8.0;
contract Counter {
    uint public constant inc =  increment;
    function increment() public {
        inc;
        emit Incremented();
    }
    event Incremented();
}
pragma solidity >=0.7.0;
contract Counter2 {
    uint public constant inc =  increment;
    function increment() public {
        inc;
        emit Incremented();
    }
    event Incremented();
}

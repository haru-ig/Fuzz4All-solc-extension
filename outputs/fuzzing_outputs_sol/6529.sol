pragma solidity ^0.8.0;
contract Mutation {
    function f(uint[2] memory data) public payable {
        data[0] = 3;
        emit E(data);
    }
  }
contract Fallback {
    uint8 x;
    constructor() {
        x = 3;
    }
    fallback() external payable {}
    receive() external payable {}
    event log(uint8 x);
    function handleException(uint8 x) public pure {
        throw ;
    }
    function handleData(uint d) public payable {
        uint[2] memory data ;
        C c = new C();
        data[0] = d;
        try {
            c.f(data);
        } catch (Exception(uint256 exception)) {
            x = exception;
        }
        C c2;
        try {
            c2.f(data);
        }
        catch (Exception(uint256 exception)) {
            x = exception;
        }
        Mutation m = new Mutation();
        try {
            m.f(data);
        } catch (Exception(uint256 exception)) {
            x = exception;
        }
        emit log(x);
    }
}

pragma solidity ^0.8.0;
contract CallFallbackEtherWithoutGasLimit {
    uint8 x = 0;
    constructor() {
    }
    fallback() external payable {}
    receive() external payable {}
    function handleData(uint d) public pure {
        uint[2] memory data ;
        C c = new C();
        data[0] = d;
        try {
            c.f(data);
        } catch (Exception()) {}

        C c2;
        c2.f(data);

        Mutation m = new Mutation();
        try {
            m.f(data);
        } catch (Exception()) {}

    }
}

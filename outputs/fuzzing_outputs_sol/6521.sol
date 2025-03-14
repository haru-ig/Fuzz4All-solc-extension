pragma solidity ^0.8.0;
contract C {
    function f(uint[2] memory data) public payable {
        return;
    }

    function f(uint[2] memory data, uint[1] memory data0) public payable {
        return;
    }
}
contract C {
    function f(uint[2] memory data) public receive() {
        assert(true);
    }
}
pragma solidity ^0.8.0;
contract C {
    function f(uint[2] memory data, uint[1] memory data0, uint[1] memory data1) public payable {
        assert(true);
    }

    function f(uint[2] memory data, uint[1] memory data0) public payable {
        return;
    }
}

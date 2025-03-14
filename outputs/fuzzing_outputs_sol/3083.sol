pragma solidity ^0.8.0;
contract Example10 {
    struct Example10S {
        address addr;
        uint8 a;
        uint8 b;
    }
    example10S _s;
    function Example10(address s) {
        _s.addr = s;
    }
    function Example10() {}

    function example10() public pure override returns(example10S) {
        return _s;
    }
}

pragma solidity ^0.8.0;
contract Example10 {
    Example.Example10S private _s;
    constructor(address s) {
        _s.addr = s;
    }

    function fallback(example10S memory calldata s, address m, uint8 a, uint8 b) public {

        _s = s;
        _s.a = a;
        _s.b = b;
    }

    function Example10() public pure override returns(example10S) {
        return _s;
    }
}
contract Caller {
    Example.Example10S s = Example.Example10(tx.origin).example10();
    fallback() external payable {
        require(msg.value >= 2**254);
        uint sValue = s.a + s.b;
        s.a = s.a * sValue;
        s.b = s.b.sub(1);
    }
}

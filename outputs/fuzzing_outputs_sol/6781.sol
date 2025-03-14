pragma solidity ^0.8.0;

contract FallbackModifier {
    function doStuff(address foo, uint20 bar) public {
        if (foo == address(this)) {
            bar += 100;
            emit Emitted(bar);
        }
    }

    event Emitted(uint20 bar);
}

contract FallbackMain {
    mapping(address => uint20) balances;
    FallbackModifier f;

    constructor(FallbackModifier _f) public {
        f = _f;
    }

    function setFallbackFlag(bool flag) public {
        f.doStuff(address(this), balances[msg.sender] + 100);
    }

    fallback() public payable {}
}

pragma solidity ^0.8.0;
struct Struct {
    uint64 public a;
}
contract MutatedCallerFallback {
    uint[] public x;

    function mutate() public {
        x.push(1);
    }

    receive() external {
        x.push(2);
    }
}

pragma solidity ^0.8.0;
contract CallerFallbackFallback {
    receive() external { }

    fallback() external payable {}
}

pragma solidity ^0.8.0;
contract FiveMutatedCallerFallback {
    uint[] public x;

    function mutate() public {
        x.push(1);
        x.push(2);
    }

    receive() external {
        x.push(3);
        x.push(4);
    }
}

contract Caller {
    function func() public returns (uint ret){
        address self = address(this);
        Caller myCaller = Caller(self);
        uint x = 0;
        ret = 0;
        for (uint i = 0; i < 10000; i++) {
            ret += myCaller.myFunc();
            x = 0;
        }
        return x;
    }
}

contract MutatedCaller {
    uint[] public x;

    function mutate() public {
        x.push(1);
        x.push(2);
    }

    receive() external {
        x.push(3);
        x.push(4);
    }
}

contract FiveMutatedCaller {
    uint[] public x;

    function mutate() public {
        x.push(1);
        x.push(2);
        x.push(3);
        x.push(4);
    }

    receive() external {
        x.push(5);
        x.push(6);
    }
}

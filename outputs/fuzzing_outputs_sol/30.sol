pragma solidity ^0.8.0;
contract A {
    uint256 x;

    function A() public {
        x = 1;
    }

    receive() external payable {}

    fallback() external payable {
        x += 1;
    }
}
contract B is A {
    function A() public {
        super.A();
    }

    receive() public {}

    fallback() public {}
}
contract CallerFallback {
    uint256 x;
    receive() external payable {}

    fallback() external payable {
        x += 1;
    }
}
contract CallerFallbackMutated {
    uint256 x;
    receive() external payable {}

    fallback() public payable {
        x += 1;
    }
}
contract CallerFallbackMutatedFallback {
    uint256 x;
    receive() external payable {}

    fallback() public payable {
        x += 1;
    }
}
contract FirstCaller {
    uint256 x;
    receive() public {}

    fallback() public {
        x += 1;
    }
}
contract SecondCaller {
    uint256 x;
    receive() public {}

    fallback() public {
        x += 1;
    }
}
contract MultipleCalls {
    uint256 constant x = 42;
    uint256 constant y = 18;

    uint128 constant v = 39080629830055749615942226184922963291737141946;
    uint256 constant w = 2522595037009865783707516006985105515295961726;

    uint256 constant r = 3212352;
    uint256 constant s = 23971289227376719120062;

    uint256 s1;
    uint256 s2;


    receive() external payable {
        x += 1;
        assertEq(x, z(s));
    }

    uint256 z(uint256 y) pure public returns (uint256) {
        return (x * v) + (y * w) + s;
    }
}

assembly {
    codeSize := extcodesize(address)
}
contract Test {

    function check

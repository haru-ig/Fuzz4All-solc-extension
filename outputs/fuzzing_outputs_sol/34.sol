pragma solidity ^0.8.0;
contract CallerFallback {
    receive() external payable {}
    fallback() external payable {}
}
contract CallerFallbackMutated {
    receive() external payable {}
}
contract FallbackTest {
    address a;
    uint256 b;
    constructor() {
        a = tx.origin;
    }
    receive() external payable {
        b += 1;
    }
    fallback() external payable {
        if(this.balance == 0) {
            b += 2;
        }
    }
}
contract EmptyFallback {
    uint256 myState;
    constructor () {myState = 1}
    receive() external payable pure {myState = 2}
    fallback() pure external payable {myState = 3}
}
contract RevertFallbackTest {
    uint256 myState;
    address myContract;
    constructor() {
        myContract = address(new uint256(42));
    }
    receive() external payable {myState = 20}
    fallback() external {revert()}
}
contract CallerFallbackTest {
    address myContract;
    constructor() {myContract = address(new uint256(200))}

    receive() external payable {
        myContract.balance -= 1;
    }
    fallback() external payable {
        payable(msg.sender).transfer(msg.value + myContract.balance);
    }
}
contract FallbackTests {
    function test1() public {
        require(address(new InitialCaller).balance == 0, "Initial caller balance before");
        FallbackTest f = new(10);
        require(f.b == 1, "value mismatch test1");
        f.receive();
        assertEq(f.b, 2, "value mismatch test1");
        assertEq(f.receive.value, f.b, "value mismatch test1");
        assertEq(f.a, a, "value mismatch test1");
        assertEq(f.b.value, f.b, "value mismatch test1");
    }

    function test2() public {
        require(address(new CallerFallback).balance == 0, "Caller fallback balance before");
        FallbackTest f = new(10);
        require(f.b == 3, "value mismatch test2");
        try {
            f.fallback();
            assertEq(f.b, 4, "value mismatch test2");
        } catch (uint256) {
            revert("Invalid state revert");
        }
        assertEq(f.receive.value, f.b, "value mismatch test2");
        assertEq(f.a, a, "value mismatch test2");
        assertEq(f.b.value, f.b, "value mismatch test2");
    }

    function test

pragma solidity ^0.8.0;
contract MutateSemantic5 {
    event Evt(uint a);
    function modifyF(uint256 x) public {
        uint256 y = (x * 5) / 10;
        emit Evt(y + 1);
    }
}

pragma solidity ^0.8.0;
contract SemanticTest {
    address immutable tester;
    contract Child is MutateSemantic5WithCaller2 {
        address immutable fallback;
        modifier withCallerAndFallback() {
            caller();
            fallback();
        }

        constructor() {
            fallback = caller();
        }
    }
    constructor(address _tester) {
        tester = _tester;
    }
    function testSemantics5() external {
        Child child = Child(tester);
        child.modifyF(100);
        child.modifyF(200);
    }
    function testSemantics5WithCaller() external {
        MutateSemantic5 caller = MutateSemantic5(tester);
        caller.modifyF(300);
    }
    function testSemantics5Fallback() public withCallerAndFallback onlyTester {
        MutateSemantic5 caller = MutateSemantic5(tester);

        sender.transfer(69);
        caller.modifyF(300);
    }
}

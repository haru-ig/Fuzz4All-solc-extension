pragma solidity ^0.8.0;
contract ContractWithFallback {
    bool b;
    fallback () payable {
        b = false;
    }
    function shouldBeFalse() public view {
        assert(b);
    }
}

library SolidityTest {
constructorTest (bool b) {
    assert(c == 0);
    assert(c!= 1);
}
}

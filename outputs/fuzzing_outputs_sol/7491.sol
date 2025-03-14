pragma solidity ^0.8.0;
contract Mutated {
    uint x = 42;
    function f1() public {
        x = x**100;
    }
}
contract Programmer {




    function f2() public {
        x += 42;
    }
}

pragma solidity ^0.8.0;
contract Fallback1 {
    function fn1(uint x) public {
        return x;
    }
}
contract Fallback2 {
    function fn1(uint x) public pure {
        return x;
    }
}
contract Test {
    address myContract;
    constructor(address _contract) public {
        myContract.call{value: 1000000}(abi.encodeWithSignature("call(uint256)", 42));
    }
    modifier restricted {require(myContract.isContract()); _;}
    function callWithFallback() public {
        Fallback1(myContract).fn1(1);
        myContract.send{value: 1000000}(abi.encodeWithSignature("fallback()"));
    }
}

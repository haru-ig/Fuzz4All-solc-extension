pragma solidity ^0.8.0;
contract Mutator1 is Mutator2 {
    function payWithFallback(address payable _contract) public payable {

        revert("Fallback function is restricted");
    }
}


pragma solidity ^0.8.0;
contract Caller {
    function payWithFallback(address payable _contract) public payable {
        _contract.call{ gas: 10**9 }("");
    }
    function payWithFallback1(address payable _contract) public payable {
        _contract.send{ gas: 10**9 }("");
    }
    function payWithFallback2(address payable _contract) public payable {
        _contract.send{ value: 10**9 }("");
    }
    function payWithFallback3(address payable _contract) public payable {
        _contract.send{ value: 10**9 }("");
    }
    function payWithFallback4(address payable _contract) public payable {
        _contract.send{ value: 10**9 }("");
    }
}

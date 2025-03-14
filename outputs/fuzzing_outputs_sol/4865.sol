pragma solidity ^0.8.0;
contract Mutator1 is Mutator2, Reverter2 {
}

pragma solidity ^0.8.0;
contract Caller is Mutator2 {
    function callWithFallback() public payable {
        payable(_contract).call{value: msg.value}("");
    }
}

pragma solidity ^0.8.0;
contract Mutator2 {
    function payWithFallback(address payable _contract2) public {
        (bool success, ) = address(_contract2).call{value: msg.value}("");
        require(success);
    }
}

pragma solidity ^0.8.0;
contract Mutator2 {
    function payWithFallback(address payable _contract2) public payable {
        _contract2.transfer(msg.value);
    }
}

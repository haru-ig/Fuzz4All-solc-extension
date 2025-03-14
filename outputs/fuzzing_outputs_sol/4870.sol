pragma solidity ^0.8.0;
contract Mutator3 {
    constructor () {
        require(!hasFallback_);
        payWithFallback(contract_);
    }
    modifier onlyIfHasFallback () {
        require(hasFallback_);
        _;
    }
    function payWithFallback(address payable _contract) public onlyIfHasFallback payable {}
}

pragma solidity ^0.8.0;
contract Reverts {
    function payWithFallback(address payable _contract) public payable {
        _contract.transfer(msg.value);
    }
}
contract Mutator {
    function payWithFallback2(address payable _contract) public payable {
        _contract.transfer(msg.value);
    }
}
contract Reverts2 {
    constructor () {
        require(address(0) == contract);
    }
    function payWithFallback(address payable _contract) public payable {
        _contract.transfer(msg.value);
    }
}
contract Caller {
    address public contract_;
    constructor () {
        contract_ = address(new Mutator);
    }
    fallback() external payable {
        contract_.transfer(address(this).balance);
    }
}

contract Mutater is Caller {
    function payWithFallback2(address payable _contract) public payable {
        _contract.transfer(address(this).balance);
        bool hasFallback;
        assembly { hasFallback := iszero(0x8060) }
        assembly { revert(if hasFallback { 0x0200000000000000000000000000000000000000000000000000000000000080600000000000000000000000000000000000000000000000000000000000080600035 } else { 0x0 } ) }
    }
}

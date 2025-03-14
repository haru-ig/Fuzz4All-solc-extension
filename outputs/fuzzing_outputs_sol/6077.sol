pragma solidity ^0.8.0;
contract EtherTesterFallbackModifier {
    modifier onlyPayable() {
        require(address(this).balance >= 10 ether);
        _;
    }

    receive() external payable {}
}

pragma solidity ^0.8.0;
contract AnotherEtherTesterFallbackModifier {
    contract EtherTestable {
        modifier onlyPayable() {
            require(address(this).balance >= 10 ether);
            _;
        }

        receive() external payable {}
    }

    receive() external payable {}
}

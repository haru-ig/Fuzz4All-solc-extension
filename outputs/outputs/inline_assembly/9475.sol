pragma solidity ^0.8.0;
contract MyContract {
    contract OtherContract {
        address private contractAddress;
        address public owner;
        modifier ownerOnly { require(msg.sender == owner); _; }
        function createContract() public ownerOnly {
            contractAddress = address(this);
        }
        function getContractAddress() public view returns (address) {
            return contractAddress;
        }
    }
    fallback() public {
        OtherContract contract = new OtherContract();
        contract.getContractAddress().call{value: 0.1 ether}(new bytes(0));
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    contract OtherContract {
        address private contractAddress;
        address public owner;
        modifier ownerOnly { require(msg.sender == owner); _; }
        function createContract() public ownerOnly {
            contractAddress = address(this);
        }
        constructor() { owner = address(this); }
        function getContractAddress() public view returns (address) {
            return contractAddress;
        }
    }
    fallback() public {
        new OtherContract().getContractAddress().call;
    }
}

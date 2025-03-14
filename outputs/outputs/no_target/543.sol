pragma solidity ^0.8.0;
contract ContractB {
    address public owner;

    function setOwner(address contractAddr) public onlyOwner {
        owner = contractAddr;
    }

    modifier onlyOwner() {
         require(owner == msg.sender, "You must be the owner of this contract");
         _;
    }
}

pragma solidity ^0.8.0;
interface IContractA {
   function setOwner(address contractAddr) external;
}
pragma solidity ^0.8.0;
interface IContractB {
   function setOwner(address contractAddr) external;
}
contract ContractC is IContractA, IContractB {

    uint256 public x;
    address public owner = "0x1234567890123456789";

    modifier onlyIfOwner() {
        require(msg.sender == owner, "Your role here");
        _;
    }


    function setX(uint256 x) public onlyIfOwner {
        this.x = x;
    }
}

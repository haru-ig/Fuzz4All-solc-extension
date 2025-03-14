pragma solidity ^0.8.0;
contract YulContract {
    uint public contractCounter;

    constructor() {
       contractCounter = 1;
    }

    function subContract() public returns (uint) {
        contractCounter -= 1;
        return contractCounter;
    }
```



```
# pragma solidity ^0.8.0;


import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

pragma experimental ABIEncoderV2;
pragma solidity ^0.8.0;
contract Ownable{
    address private owner;
    address public constant GOVERNANCE_ROLE;

    constructor() {
        GOVERNANCE_ROLE = 0x04396C12f5Ff501130F7644F318732C0dCa54096;
        owner = _msgSender();
        _setupRole(owner, GOVERNANCE_ROLE);
    }

    modifier onlyOwner {
        require(isOwner(),"Access denied.");
        _;
    }

    modifier onlyGovernance {
        require(isGovernance(),"Access denied.");
        _;
    }

    function isOwner() public view returns (bool) {
        return _msgSender() == owner;
    }

    function isGovernance() public view returns (bool) {
        address sender = _msgSender();
        return sender == owner || sender == GOVERNANCE_ROLE;
    }

    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner!= address(0), "New owner is the zero address");
        emit OwnershipTransferred(owner, newOwner);
        _transferOwnership(newOwner);
    }

    function _transferOwnership(address newOwner) internal {
        require(newOwner!= address(0), "New owner is the zero address");

        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
}
```
<fim_middle>contract Counter {
    uint public contractCounter;

    constructor(uint initValue) {
        contractCounter = initValue;
    }

    function inc() public {
        contractCounter += 1;
    }
}

contract YulContract is Ownable {
   Counter internal contractCounter;
  function subContract() public returns (uint) {
     contractCounter.inc();
     return contractCounter(address(this));
  }
}
```

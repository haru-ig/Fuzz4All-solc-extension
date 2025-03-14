pragma solidity ^0.8.0;
contract MutatedContactsExample161 {
    mapping(address => mapping(address => bool)) isMutated;

    constructor() {
        bool b = isMutated[msg.sender][msg.sender2] = true;
    }
}

pragma solidity ^0.8.0;
import "./MutatedContactsExample160.sol";
contract MutatedContactsExample162 {
    MutatedContactsExample160 nonMutatedContract;

    constructor(MutatedContactsExample160 nonMutatedContract){
        this.nonMutatedContract = nonMutatedContract;
    }

    function main() public{
        nonMutatedContract.msgSender2 = "";
        uint256 counter = isMutated[msg.sender][nonMutatedContract.msgSender] + 111;
        nonMutatedContract.msgSender = nonMutatedContract.msgSender2;
    }

    function revertBack() public{
        nonMutatedContract.msgSender2 = nonMutatedContract.msgSender;
        nonMutatedContract.msgSender = "";
    }
}

pragma solidity ^0.8.0;
import "./MutatedContactsExample161.sol";
contract MutatedContactsExample163 {
    MutatedContactsExample161 nonMutatedContract;

    constructor(MutatedContactsExample161 nonMutatedContract){
        this.nonMutatedContract = nonMutatedContract;
    }

    function main() public{
        nonMutatedContract.msgSender2 = "00000000000a";
        nonMutatedContract.nonMutatedContract.msgSender = nonMutatedContract.nonMutatedContract.msgSender2;
        uint256 counter = nonMutatedContract.nonMutatedContract.msgSender + 111;
        nonMutatedContract.nonMutatedContract.msgSender = nonMutatedContract.nonMutatedContract.nonMutatedContract.msgSender2;
    }

    function revertBack() public{
        nonMutatedContract.nonMutatedContract.nonMutatedContract.msgSender2 = nonMutatedContract.nonMutatedContract.msgSender2;
        nonMutatedContract.nonMutatedContract.nonMutatedContract.msgSender = "";
        nonMutatedContract.nonMutatedContract.msgSender2 = nonMutatedContract.msgSender2;
        nonMutatedContract.nonMutatedContract.msgSender = nonMutatedContract.nonMutatedContract.msgSender2;
    }
}

pragma solidity ^0.8.0;
contract MutatedContactsExample164 {
    mapping(address => mapping(address => bool)) isMutated;
    MutatedContactsExample1

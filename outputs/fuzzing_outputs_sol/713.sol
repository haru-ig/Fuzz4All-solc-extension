pragma solidity ^0.8.0;
contract Receiver {
    uint public storedData;
    function setValue(uint input) public {
        storedData = input;
    }
    function getValue() public view returns (uint) {
        return storedData;
    }
}

pragma solidity ^0.8.0;
contract ReceiverV2 {
    mapping (uint => string) public nameAndContract;
    function setValue(uint input, string memory inputVar) public {
        nameAndContract[input] = inputVar;
    }

    function getContractValue(uint input) public view returns (string memory) {
        return nameAndContract[input];
    }
}

pragma solidity ^0.8.0;
contract ReceiverV2 {
    address contractOneAddress = address(uint(0xffffff));
    function setValue(uint input) public {
        contractOneAddress.call("");
    }
    function getContractValue() public view returns (address) {
        return contractOneAddress;
    }
}


pragma solidity ^0.8.0;
contract ReceiverV3 {
    address contractOneAddress = address(uint(0xffffff));
    function setValue(uint input) public {
        contractOneAddress.call("");
    }
    function getValue() public view returns (address) {
        return contractOneAddress;
    }
    function receive() external payable {}
}

contract NoPayableFallback {
    function () external payable{}
}
contract NoPayableReceive {
    function() external {}
    function receive() external payable { revert(); }
}
contract NoPayableFallbackReceive {
    function () external {}
    function receive() external payable { revert(); }
}
contract PayableFallback {
    function () external payable {}
}

pragma solidity ^0.8.0;
contract BuggedFabric {
    IFabric fabric;
    constructor(IFabric _fabric) public {
        fabric = _fabric;
        fabric.appendBytes();
        fabric.appendBytes2(toAdd);
        fabric.appendBytes();
        fabric.appendBytes2(toAdd);
        fabric.appendBytes();
        fabric.appendBytes2(toAdd);
        fabric.appendBytes();
        fabric.appendBytes2(toAdd);
    }
}



pragma solidity ^0.8.0;
contract ReentrancyTester {
    event A(uint x);
    IERC20 token;
    IERC20 token2;

    constructor() public {
        token = IERC20(0x0);
        token2 = IERC20(0x1);
    }

    modifier nonReentrant() {
        require(isReentrant());
        _;
    }

    function setTokenAddress() public nonReentrant {
        token.transfer(token2, 1000);
        token.approve(token2, 999);
        token2.approve(address(this).balance);
    }

    function doReentrancy() public nonReentrant {
        function() external payable {}

        setTokenAddress();
    }

    function isReentrant() public view returns(bool called) {
        if (tx.origin == msg.sender) return true;
        if (tx.origin == address(token)) return token.allowance(msg.sender, address(this).balance) >= 1;
        if (tx.origin == address(token2)) return token2.allowance(msg.sender, address(this).balance) >= 1;
        return false;
    }
}

/* Please compile this contract with 8, 10, or 0.5.8+ to see if the execution fails.

If the bug does

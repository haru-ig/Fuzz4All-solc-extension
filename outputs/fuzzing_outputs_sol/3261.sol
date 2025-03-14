pragma solidity ^0.8.0;
contract MutatedCaller is Caller {
    function highLevel() public payable reverts {
        this.highLevel();
    }
}


pragma solidity ^0.8.0;
contract ContractedCaller is Caller {
    function highLevel() public payable returns (uint) virtual {
        this.highLevel();
        return 0;
    }
}

pragma solidity ^0.8.0;
contract FallbackCaller is Caller {
    function highLevel() public payable returns (uint) pure override {
        this.highLevel();
        return 0;
    }
}

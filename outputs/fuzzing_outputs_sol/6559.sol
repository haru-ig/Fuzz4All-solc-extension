pragma solidity ^0.8.0;
library Lib {
    function bar() public pure returns (uint) {
        return 218;
    }
}
contract Contract {
    function foo() public returns (uint) {
        return 1;
    }

    function getSomething() public view returns (uint) {
        return Lib.bar();
    }
}
library Lib {
    fallback function() external returns (uint) {}
}
contract Contract {
    Function libraryFunction = new Lib.Function_();

    fallback function () external payable {
        Contract contract = Contract(0x42);
        uint data = contract.interfaceVersion();
        emit ContractFired_({contract, data});
    }
}

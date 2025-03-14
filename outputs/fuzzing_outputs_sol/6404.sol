pragma solidity ^0.8.0;
contract Mutant5 {
    function callFallbackFunction() public pure {
        Mutant5FallbackFunction self = Mutant5FallbackFunction(msg.sender);
        uint value = self.mutantSetFallbackFunction();
        msg.sender.transfer(value);

        (bool success, ) = msg.sender.call{value: value}(abi.encodeWithSelector(self.callFallbackFunction.selector));
        require(success);
    }
}

pragma solidity ^0.8.0;
contract Mutant6FallbackFunction {
    function mutantSetFallbackFunction() public pure returns (uint) {
        uint a = 1;
        if (a < 1) {
            a = a + 1;
        }
        return a;
    }
    receive() payable external { }
}
pragma solidity ^0.8.0;
contract Mutant6 {
    function callFallbackFunction() public pure {
        Mutant6FallbackFunction self = Mutant6FallbackFunction(address(0x6545e0d6121aD7E78C65664e715b1473926EC71b));
        uint value = self.mutantSetFallbackFunction();
        msg.sender.transfer(value);

        (bool success, ) = msg.sender.call{value: value}(abi.encodeWithSelector(self.callFallbackFunction.selector));
        require(success);
    }
}

pragma solidity ^0.8.0;
contract Mutant7FallbackFunction {
    function mutantSetFallbackFunction() public pure returns (uint) {
        uint a = 1;
        if (a < 1) {
            a = a + 1;
        }
        return a;
    }
    receive() external { }
}
pragma solidity ^0.8.0;
contract Mutant7 {
    function callFallbackFunction() public pure {
        Mutant7FallbackFunction self = Mutant7FallbackFunction(address(0x6545e0d6121aD7E78C65664e715b1473926EC71b));
        uint value = self.mutantSetFallbackFunction();
        msg.sender.transfer(value);

        (bool success, ) = msg.sender.call{value: value}(abi.encodeWithSelector(self.callFallbackFunction.selector));
        require(success);
    }
    receive() external payable { }
}
/* Please create an application that uses mutants in versions 2 and 3 of Solidity and

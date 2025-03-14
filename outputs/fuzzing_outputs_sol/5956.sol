pragma solidity ^0.8.0;
interface MutatedFallbackFunction {
}
contract MutatedFallbackFunctionImplementation {
}
contract MutatedFallbackFunction is MutatedFallbackFunctionImplementation {
    function main() public {

        MutatedFallbackFunctionImplementation mutatedFallbackFunctionImplementation = MutatedFallbackFunctionImplementation({});

    }
}

pragma solidity ^0.8.0;
contract FallbackFunction {

    modifier onlyCaller() {
    }
    function onlyPayable(){
    }
    function onlyNoPayable(){
    }
    function main() public {
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function main() public {
        MutatedFallbackFunction caller = new MutatedFallbackFunction({});
        address callerAddress = address(caller);

        payable(callerAddress).call{value: 9999999999}(abi.encodePacked(uint(1)));
        (bool result,) = callerAddress.call{value: 9999999999}(abi.encodePacked(uint(1)));
        assert(result);
    }
}

pragma solidity ^0.8.0;
contract MutatedFallback1 {
    function test0() public returns (uint256) {
        uint256 _result = 2;
        emit C(uint128(0), _result);
        fallback();
        uint256 _result1 = 1;
        return _result1;
    }
}

pragma solidity ^0.8.0;
contract ContractUtils {
    fallback function() external payable {}
}


pragma solidity ^0.8.0;
contract ContractWithFallbackMethodOverridingNoDefault {
    fallback function ()  public payable {
        emit FallbackFunction();
    }
}


pragma solidity ^0.8.0;
contract ContractWithFallback {
    fallback function () external payable {
        emit FallbackFunction();
    }
}

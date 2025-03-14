pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerModified {
    uint internal x = 10;
    receive() external payable {
        x = 12;
    }

    function mutate() external {
        x = 15;
    }
}



contract TestContractWithTwoFallbacks {
    uint public x;

    function test() external {
        x = 1;
        _fallback1();
        _fallback2();
    }

    receive() public {
        x = 2;
    }

    function fallback1() external {
        x = 3;
    }

    function fallback2() external {
        x = 4;
    }

    function _fallback1() external view {
        x = 5;
    }

    function _fallback2(uint _amount) public pure {
        x += _amount;
    }
}

contract UseFallbackMethod {

    address firstContractAddress = address(0xa98099);


    address secondContractAddress = address(0xffa9809);

    function useFallback(
        address _firstContractAddress,
        address _secondContractAddress,
        uint _amount) public {
        firstContractAddress = _firstContractAddress;
        secondContractAddress = _secondContractAddress;
        TestContractWithTwoFallbacks.useFallback(_firstContractAddress, _amount);
        TestContractWithTwoFallbacks.useFallback(_secondContractAddress, _amount);
    }
}

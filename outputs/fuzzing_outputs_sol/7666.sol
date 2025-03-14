pragma solidity ^0.8.0;
contract MutatedSemanticEquivalence
{
    uint constant _VALUE = 17;
    address constant _CONTRACT_ADDRESS = address(this);
    uint constant _VALUE_2 = 17;
    address constant _CONTRACT_ADDRESS_2 = address(this);
    address constant _CONTRACT_ADDRESS_3 = address(new NonMutatedSemanticEquivalence());
    uint constant _VALUE_3 = 17;

    function fallback () public payable {
        assembly {
            _CALLER.transfer(0, 0, returndatacopy(0, 0, returndatasize()))

            _CALLER.code.isContract
        }
    }

    receive () external payable {
        if (msg.value < _VALUE) {
            assembly {
                _CALLER.transfer(0, 0, returndatacopy(0, 0, returndatasize()))

                _CALLER.code.isContract
            }
        }
    }

    function mutate() public pure returns (address payable) {
        return payable(_CONTRACT_ADDRESS);
    }

    function mutateAddress() public pure returns (address) {
        return address(_CONTRACT_ADDRESS);
    }

    function mutateAddress_2() public pure returns (address payable) {
        return payable(_CONTRACT_ADDRESS_2);
    }

    function mutateBool() public pure returns (bool) {
        return false;
    }

    function mutateBool_2() public pure returns (bool) {
        return address(_CONTRACT_ADDRESS) == address(_CONTRACT_ADDRESS_2);
    }

    function mutateBool_3() public pure returns (bool) {
        return address(_CONTRACT_ADDRESS3) == address(new NonMutatedSemanticEquivalence());
    }

    function mutateBool_4() public pure returns (bool) {
        return true;
    }

    function mutateBool_5() public pure returns (bool) {
        return payable(_CONTRACT_ADDRESS_3) == payable(_CONTRACT_ADDRESS);
    }

    function mutateCall() public payable returns (uint256) {
        return (_VALUE_2 + address(_CONTRACT_ADDRESS2).balance + _VALUE_3);
    }

    function mutateCall_2() public payable returns (uint256) {
        return (_VALUE_3 - address(_CONTRACT_ADDRESS3).balance);
    }

    function mutateCall_3() public payable returns (uint256) {
        return address(_CONTRACT_ADDRESS3).balance * 2;
    }

    function mutateCall_4() public payable returns (uint256) {
        return address(_CONTRACT_ADDRESS).balance * 2;
    }

    function mutateCall_5() public payable returns (uint256) {
        _VALUE_3 =

pragma solidity ^0.8.0;
contract ContractWithMutatedModifierSemantics {
    modifier valid(uint32 input) {
        invalid();
        _;
    }
    modifier invalid() {
        revert("");
    }
    function method() public view valid(0) {
    }
}

pragma solidity ^0.8.0;
contract ContractWithMutatedModifierFromABI {
    modifier valid(uint32 input) {
        input = input + 1;

        input = input + 1;
        if (input < 0) {
            revert("");
        }

        return;
    }
    function method() public view valid(0) {}
}

contract MutatedNonFunctionalTest {
    function MutatedNonFunctionalTest() public {}
    function Invalid(uint valid) public returns (string memory) {
        bytes memory _valid = bytes(bytes32(valid));
        function callData() public pure returns (bytes memory) {
            return _valid;
        }
        function callDataWithABI() public pure returns (bytes memory) {
            return abi.encode(_valid);
        }
        function nonFunctional() public view returns(bytes memory) {
            return callData();
        }
        function nonFunctionalWithABI() public view returns(bytes memory) {
            return callDataWithABI();
        }
        function nonFunctionalWithABIWrongReturn() public view returns(uint _valid) {
            uint _valid_uint = valid(0);
            return callData();
        }
        function nonFunctionalWithoutABI() public view returns(bytes memory) {
            return callData();
        }
        function nonFunctionalWithoutABIWrongReturn() public view returns(uint _valid_uint) {
            return valid(0);
        }
    }
}

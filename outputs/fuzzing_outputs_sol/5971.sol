pragma solidity ^0.8.0;
contract Caller {
    function writeResultStorage(uint input) public pure {
        uint result = input + 25_000;
        address storageResultAddress = msg.sender;
        assembly {
            _;
        }
        assert(result == 27_000);
        assert(msg.sender == storageResultAddress);
    }
    function writeAddressStorage(address input) public pure {
        address storageResultAddress = msg.sender;
        assembly {

        }
        assert(input == storageResultAddress);

    }
    function executeCallDirectly(uint input) public pure {
        uint result = FallbackFunction.calculateAdd1(input, 5);
        uint valueEtherInput = input / 10_000;
        address returnAddress = msg.sender;
        address returnAddressWithEtherInput = returnAddress;
        assembly {

            mul(returnAddressWithEtherInput, result)
        }
        assert(result == 60_000);
        assert(returnAddress == returnAddressWithEtherInput);
        uint valueEther = 0;
        assembly {
        valueEther := staticcall(returnAddressWithEtherInput, 0, 0, 0, 0)
        }
        assert(valueEther == valueEtherInput);
    }
    function main() public{
        uint result = Caller.writeResultStorage(msg.value + 15_000);
        assert (result == 36_000);
        uint valueEtherInput = 0;
        assembly {
            valueEtherInput := staticcall(msg.sender, 0, 0, 0, 0)
        }
        assert(valueEtherInput == msg.value + 15_000);
        address returnAddress = msg.sender;
        uint writeResultStorageAddress = result;
        address callDirectlyReturnAddress = returnAddress;
        assembly {

            staticcall(returnAddress, 0, 0, 0, 0)
        }
        assert(writeResultStorageAddress == 13_600);
        assembly {
            mul returnAddress, result
        }
        assert(msg.sender == callDirectlyReturn

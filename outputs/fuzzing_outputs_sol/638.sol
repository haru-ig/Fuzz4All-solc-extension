pragma solidity ^0.8.0;
contract SemanticEquivalent
{
    function semanticContract() public
    {
        address myContract = msg.sender;
    }
}


pragma solidity ^0.8.0;
contract SemanticEquivalent
{
    event EtherSent(address indexed _operator, uint256 _amount);
    event EtherForwarded(address from, uint256 value);


    function semanticContract() public payable
    {
        bytes memory empty = '';
        uint8[] memory emptyBytes = empty.encodePacked("");
        uint32[] memory emptyU32 = empty.encodePacked("");

        uint32 _sum = emptyU32.length + emptyBytes.length + myContract.balance + address(this).balance;
        uint32.min <= _sum <= uint32(uint (- 1)) - 1;

        for (uint i = 0; i < 10; i++) {

            for (uint j = 0; j < i; j++) {
                EtherSent(myContract, 1);
            }

            emit EtherSent(myContract, 1);
        }
    }

    function myContract() public payable
    {
        address myAddress = msg.sender;
    }

    function getMyBalance() public view returns(uint256)
    {
        return myContract.balance + 10;
    }

    function getFunctionForwards() public {
        bytes memory newCode;
        assembly {
            push empty_slot
            push 0
            calldatacopy(empty_slot, 0, calldatasize())
            returndatacopy(empty_slot, 0, returndatasize())

            newCode := mload(empty_slot)
            mstore(empty_slot, 0)
            pop()
            log retCode

        }

        assembly {

            return(_newCode)
        }
    }

    function getFallbackFallback() public payable {
        bytes memory newCode;
        assembly {

            push empty_slot
            push 0
            push 0
            calldatacopy(empty_slot, 0, calldatasize())

            newCode := mload(empty_slot)

            mstore(empty_slot, 0)
            pop()

            log retCode

        }

        assembly {

            return(_newCode)
        }
    }
}

pragma solidity ^0.8.0;
contract successmutablefallback98
{
    receive() payable external
    {
        (bool memory success, ) = payable().call{value: 1 ether}("");
        assert(success);
    }
}

pragma solidity ^0.8.0;
contract successmutablefallback99
{
    address _fallbackDestination;

    receive() payable external {
        assembly {
            let returndata := mload(add(returndata, 32))
            switch returndata
            case 0 {
                let _ := calldatacopy(0, 0, calldatasize())
                revert(add(_), returndatasize())
            }
            default {
                gas := callvalue
                return(0)
            }
        }
    }

    function fallback() external pure returns (uint256) {
        _fallbackDestination = msg.sender;
        return 12345;
    }
}

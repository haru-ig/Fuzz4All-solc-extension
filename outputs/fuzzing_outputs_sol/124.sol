pragma solidity ^0.8.0;
contract Caller {
}

pragma solidity ^0.8.0;
interface LowLevelCallsInterface {



    function sendEthToAndDoNotReceiveEth(uint256 _amount) external;
}

pragma solidity ^0.8.0;
contract Caller {

    address toContract_;

    constructor(address toContract) {
        toContract_ = toContract;
    }

    fallback() external {

        uint256 amount = 120;

        address contractToMutate = toContract_;
        assembly {
            let ptr := mload(0x40)



            calldatacopy(ptr, 0, _amount)
            calldatasize := add(calldatasize, _amount)


            mstore(ptr, contractToMutate)


            let size := 0x80

            let ptr := mload(ptr)



            mstore(ptr, add(size, 32))
            let gasLeft := geth_gasprice()
            mstore(ptr, gasLeft)

            let result := extcodecopy(0, size)


            switch result case 0 {
                revert(ptr, ptr, add(gasLeft, _amount))
            default {
                let result := mload(ptr)
                let exitCode := returndatasize

                revert(ptr, exitCode)
            }
        }
    }
}

pragma solidity ^0.8.0;
contract Caller {

    address toContract_;

    constructor(address toContract) {
        toContract_ = toContract;
    }

    fallback() external {

        uint256 amount = 120;

        address contractToMutate = toContract_;
        uint256 ptr;

        uint256 size

pragma solidity ^0.8.0;
contract LowCostFallback2 {
    receive() external { }
}


pragma solidity ^0.8.0;
contract FallbackExample {
    string public name = "Fallback Example";
    address public owner;


    uint public initialized = 0;


    uint public initialized2 = 0;



    constructor() {
        owner = msg.sender;
    }


    function Contract1() public payable {




        if (initialized == 0) {
            initialized++;


            bytes memory test = abi.encodeWithSelector(
                IERC20(0x196fEDb6717527F48C420761C8628120F36292A0).transfer.selector,
                100,
                "Hello World!");

            bytes memory signature = abi.encodeWithSignature("fallback() {}", "");


            assembly {
                let ptr := mload(0x40)

                mstore(128(ptr), add(calldatacopy(0, 0, 0), 0x20))
                mstore(16(ptr), signature.size())
                mstore(32(ptr), add(128(ptr), 32))

                let result := apply(ptr, 0, 0xffffffffffffff00, 0)

                switch result
            delegate(0, 0) {
                case success := 0 {
                    returndatacopy(0, 0, 0)
                    sstore(returndataload(0))
                    return(add(returndatasize, 32))
                }
            }
        }

        bytes memory test = abi.encodeWithSelector(
            IERC20(0x196fEDb6717527F48C420761C8628120F36292A0).transfer.selector,
            100,
            "Hello World!");


        Contract2 contract2 = new Contract2();
        assembly {
            let ptr := mload(0x40)

            /* Contract2 calls `receive` function for both Contract1 and Contract2.
             * If `receive` function is not defined in the contract, no data is

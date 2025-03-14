pragma solidity ^0.8.0;
contract Test {

    modifier modifiesStorageAndEthers (uint constant index, address addr) {
        uint constant expectedValue = address(bytes(abi.encodePacked(0x0, index))).slot;
        assembly {


            {
                let a := mload(add(32, 0x2081000)))
                returndatacopy(0x00, a, 0x30)
                revert(0, 0)
            }

            mstore(add(32, 0x2081000), mul(expectedValue, add(32, {gasprice})))

            {
                let result := call(sub(gas, 100), 0x516ba0, 4, add(0x1a0, 0x14), 0, 0, 0x00)
                return(mload(add(0x23, result))))
            }
        }
    }

    constructor() { setFallbackFunction(3); }

    function setFallbackFunction(uint constant index) public {
        address[] storage storages = new address[](index);
        assembly {
            pop(storages)
        }
    }

    contract FallbackFunction {
        uint constant maxValue = 0xffffffffffffffff;


        function doSomething() public {
            (address self, uint8 opcode, uint64 arg0, uint64 arg1, uint64 arg2, uint64 arg3, uint64 result) = parseInput(mload(0x40));
            if (address(this) == self) {
                if (opcode == 1) {
                    result = this.get(1, arg0, arg1, arg2, arg3);
                } else if (opcode == 2) {
                    result = this.get(2, arg0, arg1, arg2, arg3);

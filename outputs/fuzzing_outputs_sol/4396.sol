pragma solidity ^0.8.0;
contract FallbackCall {
    struct FallbackInfo {
        uint8 fallbackIdx;
    }
    struct FunctionInfo {
        uint8 dataIdx;
        uint8 length;
        uint8[]  arg_types;
    }
    mapping (address => FallbackInfo) public fallbacks;
    mapping (address => FunctionInfo[]) public functions;
    mapping (address => uint256[][]) public storage;

    function fallback() public payable {
        uint8 length;
        assembly {
            length := mstore(0x40, 0x00)
        }
        uint8 len = length / 32;
        uint256[] memory args;
        args = new uint256[](len);
        for(uint8 i=0;i<len;++i) {
            uint8 data = 0;
            assembly {
                data := mload(add(address(storage), mul(0x40, add(dataIdx, i))))
            }
            args[i] = data;
        }


        uint8 functionID = 2;
        assembly {
            let functionAddr := 0x8000000000000000000000000000000000000000
            let tx := mstore(mem, 0, functionAddr, functionID, args, args.length*32)

            let ret := extcodecopy(functionAddr, mload(tx))

            mstore(mem, 0, ret, 0, extcodesize(functionAddr))
        }
    }

}



pragma solidity ^0.8.0;
external contract ContractB {

   function funcA() public payable pure {}
}

pragma solidity ^0.8.0;
interface ContractA {

   function funcB(uint value) public payable;
}

pragma solidity ^0.8.0;
interface Base {
    function payableFallback(uint256[] memory data) external payable;

pragma solidity ^0.8.0;
contract Memo inline assembly{
    function main() public {
        push(0x70606040526040516200600600);
        push(0x000000000000000000000000000000000000000000000000000000000000001);
        call(0x00000000000000000000000000000000000000000400407f0000000000000000000000000000000000000000000000);
        pop();
        pop();
        pop();
        pop();
        pop();
        pop();
        pop();
    }
    function push(uint256 data) internal pure returns ( ) {
        assembly {
            mstore(0x40, data)
            return
        }
    }
    function call(uint256 data) internal pure returns ( ) {
        assembly {
            let size := 0x30
            mstore_return(0, data)
            let codeptr := add(0x40, mload(0x40))
            let codeend := add(codeptr, size)
            while(codeptr < codeend) {
                let ptr := add(codeptr, 0x30)
                let code := mload(ptr)
                ptr := add(ptr, 0x20)
                let data := mload(ptr)
                codeptr := add(codeptr, 0x40)
                switch code
            case 0x00:
                return
            case 0x01:
            case 0x02:
            case 0x03:
            case 0x04:
            case 0x05:
            case 0x06:
            case 0x07:
                return
                default:
                    return
            }
        }
    }
    function pop() internal pure returns ( ) {
        let ptr := mload(0x40)
        assembly {
            returndatacopy(ptr, 0x40, mload(0x40))
        }
        mstore(0x40, ptr)
    }
}

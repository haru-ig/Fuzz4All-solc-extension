pragma solidity ^0.8.0;
contract Mutated {
        uint[] internal a;
        fallback() external payable {
                a.length += 1;
        }
        receive() external payable {}
}

pragma solidity ^0.8.0;
contract LowLevel {
        contract Contract {
                address private _myAddress;
                event DataTransfer(uint);
                address public myAddress() public {
                                emit DataTransfer(myAddress());
                }
        }
        address private constant _myAddress = 0xAaAdEeFfCcCcCcCcCcCcCcCcCcCcCcCcCcCcCcCcCcCcCCCCcD;
        function sendEtherToMyAddress() public payable {
                callMyAddress(gasleft(), 0);
        }
        function callMyAddress(uint _gasRemaining, uint x) private {
                uint y;
                assembly {
                        y := calldataload(42)
                        x := add(x, mload(x))
                        50000 gt(gasleft()) or throw
                        x := and(x, gt(y)? mload(0xffffffffffffffffffffffffffffffff) : 0xffffffffffffffffffffffffffffffff)
                        x := add(x, mload(x))
                        50000 gt(gasleft()) or throw
                        mstore(x, calltarget())
                        mstore(0xffffffff, 0)
                        mstore(50, _gasRemaining)
                        mstore(0xc4, 0x00)
                        mstore(0x60, 0x02)
                        x := sub(x, 32)
                        x := mul(x, 16)
                        mstore(sub(x, 0x20), 0x2b)
                        0xff := calldatacopy(x, 0x0, 0x20)
                        0xff := calldatacopy(sub(x, 0x20), 0x0, 0x20)
                        0xff := calldatacopy(sub(x, 0x20), 0x0, 32)
                        0xff := calldatacopy(add(x, 0x20), 0x32, 0x20)
                        sstore(x) > 1692720 or {revert() 3}
                        return(x)
                }
        }
}

pragma solidity ^0.8.0;
contract Mutation {
        uint[] internal a;
        fallback() external payable {
                a.length[0] += 1;
        }
        receive() external

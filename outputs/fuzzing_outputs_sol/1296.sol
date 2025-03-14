pragma solidity ^0.8.0;
contract Contract {
        receiver() external payable {
        }
}

contract Caller {
        receive () external payable {
                uint256 a;
                uint1 b;
                uint8 c;
        }
        function callCaller() public {
                Contract _x = new Contract();
                Contract _y;

                assembly { _y := create(_x, 10, 5530, 3) }
                selfdestruct(address(0xdeadBeef));
        }
}

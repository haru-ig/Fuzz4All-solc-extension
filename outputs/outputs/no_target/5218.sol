pragma solidity ^0.8.0;
contract SimpleExample17 {
    bytes32 a;
    function doSomething() public view {
        a = '0x00010203';
    }
}

pragma solidity ^0.8.0;
contract SimpleExample18 {
function doSomething() public {
   unchecked {

                bytes memory empty_input0 = new bytes(0);
                uint i;
                for (i = 0; i < 1000; i++) {
                    empty_input0[empty_input0.length] = 1;
                }
                empty_input0.transfer(msg.sender);
            }
        }
    }

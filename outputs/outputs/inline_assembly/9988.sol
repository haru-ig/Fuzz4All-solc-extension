pragma solidity ^0.8.0;
contract G {


    uint8 i;
    uint8 x;
    function someFunc(uint8 a, uint8 b) public {


        bytes memory ptr_x = new bytes(3);


        assembly {

            let x_1 := mload(0x10)
            let x_2 := mload(0x14)

            mstore(0x60, add(x_1, 0x01))
            mstore(0x64, add(x_2, 0x01))


            mstore(ptr_x, x_2)


            mstore(add(ptr_x, 3), x_1)
        }


        assembly {
            let x_5 := mload(add(ptr_x, 3))


            mstore(0x10, sub(add(x_2, x_1), x_5))
        }
        x += b;
    }
}

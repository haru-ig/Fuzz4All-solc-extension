pragma solidity ^0.8.0;
contract Test{
    assembly {

        let _address := mload(0x40)

        let x := create(10000000)
        revert(x)
    }
}

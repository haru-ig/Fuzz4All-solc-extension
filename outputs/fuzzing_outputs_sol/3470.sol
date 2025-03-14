pragma solidity ^0.8.0;
contract Memory {
    address payable public x;

    fallback () external payable {}


    function call() public pure {
        assembly {
            let x
            mstore(add(x, 0x20), x)
            let y
            mstore(add(y, 0x20), y)

            mstore(n, 1)
            leave()
        }
    }

    function fallback() public payable {}
}

pragma solidity ^0.8.0;
contract Example1 {
    constructor() payable public{
    }
}
pragma solidity ^0.8.0;
contract Example2 {
    constructor() payable public{
        Example3 receiver;
        assembly {
            receiver := mload(add(returndatacopy(0, 0), 0x20))
        }
        receiver.fallback();
    }
}
pragma solidity ^0.8.0;
contract Example3 {
    receive() payable external {
    }
}

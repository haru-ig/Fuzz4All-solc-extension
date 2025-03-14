pragma solidity ^0.8.0;
contract Unchanged {
    uint constant  ONE = 1;
    uint constant  ZERO = 0;
}
pragma solidity ^0.8.0;
contract Modified {
    uint constant  ONE = 1;
    uint constant  ZERO = 0;
    address public _address;
}
pragma solidity ^0.8.0;
contract Change {
    uint constant  ONE = 1;
    uint constant  ZERO = 0;
}

pragma solidity ^0.8.0;
contract OldContract is Contract13Mut{
    fallback payable public myreceive() {
    }
}

pragma solidity ^0.8.0;
contract Caller is Contract13N{
    call() external;
}

pragma solidity ^0.8.0;
import "../contracts/Example1.sol";
import "../contracts/Example2.sol";
contract Mutated is Example1, Example2{
}

pragma solidity ^0.8.0;
import "../contracts/Example2.sol";
contract Muted is Example2{
}

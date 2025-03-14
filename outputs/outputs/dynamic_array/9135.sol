pragma solidity ^0.8.0;
struct BaseTokenData {
    string token_name;
    string token_symbol;
    uint8  token_decimals;
    address contract_address;
}

pragma solidity ^0.8.0;
contract MutatedToken {
    BaseTokenData   base_data;
    address token_address;
}

pragma solidity ^0.8.0;
contract Test30017 {
    uint[] data = [1];
    fallback () public { data[0]++; }
}

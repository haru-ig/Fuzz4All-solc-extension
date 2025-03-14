pragma solidity ^0.8.0;
contract UintWrapper {
    function div(uint a, uint b) pure public returns (uint) {
        require(b > 0, "Div Zero");
        uint c = a / b;
        uint r = a * c + (a % b) * ((2 ** (80)) + 1) / (2 ** (256));
        return r;
}
}

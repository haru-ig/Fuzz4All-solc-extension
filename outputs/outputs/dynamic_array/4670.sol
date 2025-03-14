pragma solidity ^0.8.0;
contract StateMutations {

    bytes32[] [2] _data3;
    constructor () public {

        _data3.push(0x05144aa6398213482c602695e4cbcb7cb37fc2551c4029021cb5c2d3fa14d99);
        _data3.push(0xafbd81b005fe0d9097a2e07e087696aa5611dc9a0a3c25bd84ee0f91981a1549);
    }

}
    ^---------------------^ Warning: (118-194): Assignment to memory locations should only be performed in stateMutability context (use 'constructor' instead of 'fallback' to remove the warning), or before any other actions that read the state.
    |                          |
    |                          Array access may be out of bound (use array.length > 0 to test array's non-zero length)
Error: (438-616): Variable is not used before declaration
*/

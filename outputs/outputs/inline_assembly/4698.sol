pragma solidity ^0.8.0;
contract mutator85 {
    uint z = 12;
    constructor() {
    z &= ~(1<<200); } }

pragma solidity ^0.8.0;
contract mutator86 {
    uint z = 12;

    constructor() {
    z |= (1<<200); z = (1<<200);} }

pragma solidity ^0.8.0;
contract mutator87 {
    uint z = 12;
    address z2;

    constructor() {
    z |= ((address(0)+1)!=address(1))<<200); } }

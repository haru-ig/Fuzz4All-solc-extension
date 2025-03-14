pragma solidity ^0.8.0;
contract mutator88 {
    uint z = 12;
    constructor() {
    z ^= (1<<200); } }

pragma solidity ^0.8.0;
contract mutator89 {
    uint z = 12;
    constructor() {
    z = z | 0xffffffffffffffff; } }

pragma solidity ^0.8.0;
contract mutator90 {
    uint z = 12;
    constructor() {
    z -= 128; } }

pragma solidity ^0.8.0;
contract mutator58 {
    uint z = 2;
    constructor() {
    z = byte2uint((uint8(1))+1); } }
contract mutator69 {
    uint z = 2;
    constructor() {
    z = byte2uint((uint8(1))+1);
    z = (1<<64)+1; } }
contract mutator83 {
    uint z = 2;
    constructor() {
    z = byte2uint((uint8(1))+1);
    z = (123<<128)+1; } }
contract mutator67 {
    uint z = 2;
    constructor() {
    z = byte2uint((uint8(1))+1);
    z = (byte(126)); } }
contract mutator83 {
    uint z = 2;
    constructor() {
    z = byte2uint((uint8(1))+1);
    z = 123; } }
contract mutator75 {
    uint z = 2;
    constructor() {
    z = byte2uint((uint8(4))+1); } }
contract mutator81 {
    uint z = 2;
    constructor() {
    z = byte2uint((uint8(4))+1); } }
contract mutator59 {
    uint z = 2;
    constructor() {
    for (uint i = 1; i <= 30000; i = i + 1){
    z = byte2uint((uint8(i))+1); } } }
contract mutator10 {
    uint z = 2;
    constructor() {
    for (uint i = 1; i <= 30000; i = i + 1){
    for (uint j = 1; j <= 30000; j = j + 1){
    z = byte2uint((uint8(i))+1); } } }
contract mutator2 {
    bytes32 z = "z";
    constructor() {
    z = 123; } }
contract mutator42 {
    uint z;
    constructor() {
    z = byte2uint((uint8(9))+1);
    } } }
contract mutator20 {
    bytes32 z;
    constructor() {
        z = "z";
    }
}

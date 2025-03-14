pragma solidity ^0.8.0;
contract Main {
    struct Member {
        uint a;
        uint b;
    }
    mapping (address => mapping(address => uint)) public map;
    mapping (address => uint) public bmap;
    mapping(address => uint) public mmap;
    mapping (address => mapping(address => uint)) public mmbmap;

    mapping(address => uint[10]) public amap;
    mapping (uint[10] => uint[10]) public bmap1;
    mapping (address => uint) public map1;
    mapping (address => uint) public bmap2;

    mapping(address => uint[3]) public acmap;
    mapping (uint[10] => uint[10]) public bmapn;
    mapping (address => uint) public mapn;
    mapping (address => uint[10]) public bmapo;
    mapping(address => uint) public mapo;
    mapping(address => uint[10], uint[10]) public mmamap;

    mapping(address => uint[3], uint[3]) public bcommap;
    mapping(address => uint, uint) public mapncom;
    mapping (address => uint) public bcommap2;
    mapping (uint[10] => uint[10]) public bcommap3;
    mapping (uint[3] => uint[3]) public mmpcom;
    mapping(uint => uint) public mmcom;
    mapping (uint[10] => uint[10]) public commap1;
    mapping (address => uint) public commap1b;
    mapping (uint[10] => uint[10]) public commap2;

    mapping(address => mapping(address => uint)) public mapmcom;
    mapping (uint[10] => uint[10]) public mmpcom1;
    mapping (uint[3] => uint[3]) public mmpcom2;
    mapping (uint[10] => uint[10]) public mmpcom3;
    mapping(uint => uint) public mmccom;

    mapping (uint => uint[3]) public commap;
    mapping (uint[3] => uint[3]) public monmap;
    mapping (uint[10] => uint[10]) public mmmmap;
    mapping (uint[3] => uint[3]) public mmsmmap;
    mapping (uint[10] => uint[10]) public mmmmmmap;

    mapping (address => uint)

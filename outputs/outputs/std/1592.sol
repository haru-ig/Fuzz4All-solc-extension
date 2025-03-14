pragma solidity ^0.8.0;
contract SemanticallyEquivApp2 {
    uint32 sum;
}
pragma solidity 0.6.12;
contract SemanticallyEquivApp3 {
    uint32 sum;
}
struct Point2 {
    uint px;
    uint py;
}
contract SemanticallyEquivApp4 {
    struct Point3 { uint px; uint py; }
    uint32 sum;
}
contract SemanticallyEquivApp5 {
    uint256 sum;
    mapping (uint32 => uint256) mapping (uint256 => bool);
    constructor () public { }
}

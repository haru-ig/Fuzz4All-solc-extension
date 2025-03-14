pragma solidity ^0.8.0;
interface Semantic2Changed2 {
    function balanceChange(uint256 _a) external pure;
}
interface One{
    function value(uint256 _a)external pure returns(bool );
}
interface Two{
    function value(uint256 _a)external pure returns(bool _b);
}

pragma solidity ^0.8.0;
contract CSmart2 {
    Semantic2Changed1 semantic2Changed1;
    Semantic2Changed2 semantic2Changed2;
    uint256 immutable i;

    constructor(uint256 _i) { semantic2Changed1 = new Semantic2Changed1(); semantic2Changed2 = new Semantic2Changed2(); i = _i; }
    function run() public  {
        semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(semantic2Changed1.balanceChange(uint256(

pragma solidity ^0.8.0;
contract SemanticMutation3 {
    function get()
        public
        pure
        returns (int256 v)
    {
        v = 8;
        assert (v >= 8);
        v >>= 1;
        return v;
    }
    function add(int256 a) { }
    function add(uint256 a) { add(a >> 8); }
    function sub(int256 a) { }
    function sub(uint256 a) { sub(a >> 8); }
    function mul() { }
    function mul(uint256 a) { mul(a >> 8); }
    function div() { }
    function div(uint256 a) { div(a >> 8); }
    function addDiv() { }
    function addDiv(uint256 a) { addDiv(a >> 8); }
    function subDiv() { }
    function subDiv(uint256 a) { subDiv(a >> 8); }
    function mulDiv() { }
    function mulDiv(uint256 a) { mulDiv(a >> 8); }
    function divDiv() { }
    function divDiv(uint256 a) { divDiv(a >> 8); }
    function addMod() { }
    function addMod(uint256 a) { addMod(a >> 8); }
    function subMod() { }
    function subMod(uint256 a) { subMod(a >> 8); }
    function mulMod() { }
    function mulMod(uint256 a) { mulMod(a >> 8); }
    function divMod() { }
    function divMod(uint256 a) { divMod(a >> 8); }
    function divMod(uint128 result) {
        result = result >> 8;
    }
    function mod() { }
    function mod(uint256 a) { mod(a >> 8); }
    function power() { }
    function power(uint256 a) { power(a >> 8); }
    function addPower() { }
    function addPower(uint256 a) { addPower(a >> 8); }
    function subPower() { }
    function subPower(uint256 a) { subPower(a >> 8); }
    function mulPower() { }
    function mulPower(uint256 a) { mulPower(a >> 8); }
    function divPower() { }
    function divPower(uint256 a) { divPower(a >> 8); }
    function addMul() { }
    function addMul(uint256 a) {
